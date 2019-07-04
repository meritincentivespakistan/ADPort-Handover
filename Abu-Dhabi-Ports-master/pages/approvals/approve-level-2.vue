<template>
    <v-app>
        <v-container class="level2">
            <v-layout row>
                <v-flex xs12>
                    <h3>Approval Level 2</h3>
                </v-flex>
                <v-flex xs12 sm6 md6 v-for="(user, i) in users" :key="i"  mb-3 pr-3>
                    <v-card>
                        <v-alert v-if="user['Approved for level 2'] ==1" :value="true" type="success"> Approved </v-alert>
                        <v-alert v-if="user['Approved for level 2'] ==-1" :value="true" type="error"> Declined </v-alert>
                        <v-card-text>
                            <v-container pb-0>
                                <v-layout wrap v-if="user['nominated_user_group_name'] || user['nominated_user_group_name'].length>0">
                                    <v-flex xs5><h5 class="green--text">VP Name:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['nominated_user_group_name'][0] }}</p></v-flex>
                                </v-layout>
                                 <v-layout wrap v-if="user['nominated_user'] || user['nominated_user']['first_name']">
                                    <v-flex xs5><h5 class="green--text">nominee Name:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['nominated_user']['first_name'] }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user['nominated_user'] || user['nominated_user']['email']">
                                    <v-flex xs5><h5 class="green--text">nominee Email:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['nominated_user']['email'] }}</p></v-flex>
                                </v-layout>
                                
                                <v-layout wrap v-if="user['nominated_by'] || user['nominated_by']['name']">
                                    <v-flex xs5><h5 class="green--text">Nominator Name:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['nominated_by']['name'] }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user['nominated_by'] || user['nominated_by']['email']">
                                    <v-flex xs5><h5 class="green--text">Nominator Email:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['nominated_by']['email'] }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user['reason']">
                                    <v-flex xs5><h5 class="green--text">Reason For Nomination:</h5></v-flex>
                                    <v-flex xs7><p>{{ user['reason'] }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user.points">
                                    <v-flex xs5><h5 class="green--text">Points</h5></v-flex>
                                    <v-flex xs7><p>{{ user.points }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user.nomination_id">
                                    <v-flex xs5><h5 class="green--text">Campaign:</h5></v-flex>
                                    <v-flex xs7><p>{{ user.nomination_id.name }}</p></v-flex>
                                </v-layout>
                                <v-layout wrap v-if="user.Type">
                                    <v-flex xs5><h5 class="green--text">Value:</h5></v-flex>
                                    <v-flex xs7><p>{{ user.Type }}</p></v-flex>
                                </v-layout>
                            </v-container>
                        </v-card-text>
                        <v-card-actions v-if="user['Approved for level 2'] == 1 || user['Approved for level 2'] == -1" class="p-0">
                            <v-btn :disabled="true" depressed block color="gray" @click="nominationApproval(user)">Approve</v-btn>
                            <v-divider vertical></v-divider>
                            <v-btn :disabled="true" depressed block color="gray" @click="openDeclineModal(user)">Decline</v-btn>
                        </v-card-actions>
                        <v-card-actions v-else class="p-0">
                            <v-btn :disabled="disableBtn" depressed block color="gray" @click="nominationApproval(user)">Approve</v-btn>
                            <v-divider vertical></v-divider>
                            <v-btn :disabled="disableBtn" depressed block color="gray" @click="openDeclineModal(user)">Decline</v-btn>
                        </v-card-actions>
                    </v-card>
                </v-flex>
            </v-layout>
            
        </v-container>
        <v-dialog v-model="dialog" persistent max-width="600">
            <v-card>
                <v-card-title class="headline">Decline Reason</v-card-title>
                <v-card-text>
                    <v-form ref="reasonForm">
                        <v-text-field label="Reason *" :rules="reasonRules" outline v-model="reason"></v-text-field>
                    </v-form>
                </v-card-text>
                <v-card-actions class="p-0">
                    <v-btn :disabled="disableBtn" block depressed color="gray" @click="dialog=false">No</v-btn>
                    <v-divider vertical></v-divider>
                    <v-btn :disabled="disableBtn" block depressed color="gray" @click="nominationDecline">Yes</v-btn>
                </v-card-actions>
            </v-card>
        </v-dialog>

        <responseModal @closeModal="closeResponseModal" :showModal="show" :message="msg" />
    </v-app>
</template>
<script>
import responseModal from "@/components/responseModal";
import Cookies from "js-cookie";

export default {
  components: {responseModal},
  data() {
    return {
        nominationId: 1,
        accountId: 1,
        show: false,
        dialog: false,
        disableBtn: false,
        selectedUser: {},
        users: [],
        reason: "",
        reasonRules: [v => !!v || "Please enter reason"]
    };
  },
  mounted() {
      this.islogged();
  },
  methods: {
            islogged() {
      if (Cookies.get("isLogged") == "true") {
      this.getLevel2Users();

      } else {
        this.$router.push("/login");
      }
    },
    closeResponseModal(){
      this.show = false
    },
    openDeclineModal(user) {
      this.dialog = true;
      this.selectedUser = user
    },
    getLevel2Users(){
        this.$store.dispatch("getNominationedUsers", [this.nominationId, Cookies.get("userId")])
        .then(resp => {
            if (Array.isArray(resp.data.data)) {
                this.users = resp.data.data;                
            }
            else{
                this.users = [resp.data.data];  
            }
        })
        .catch(error => {
          console.log("error", error);
        });
    },
    nominationApproval(user){
        this.show = false;
        this.disableBtn = true;
        let data= {
            "level_2_approval": 1,
            "nomination_id": user.nomination_id.id,
            "decline_reason": this.reason
        }
            
        this.$store.dispatch("approvalLevel2", [this.nominationId, user.id, data])
        .then(resp => {
            this.getLevel2Users();
            this.msg = "Nomination Approved Successfully";
            this.show = true;
            this.disableBtn = false;
        })
        .catch(error => {
            this.msg = "Oops something went wrong!";
            this.show = true;
            this.disableBtn = false;
        });
    },
    nominationDecline(){
        this.show = false;
        this.disableBtn = true;

        if (this.$refs.reasonForm.validate()) {
            let data= {
                "level_2_approval": -1,
                "nomination_id": this.selectedUser.nomination_id.id,
                "decline_reason": this.reason
            }
            let id = this.selectedUser.id
            
            this.$store.dispatch("approvalLevel2", [this.nominationId, id, data])
            .then(resp => {
                this.getLevel2Users();
                this.dialog = false;
                this.msg = "Nomination Declined";
                this.show = true;
                this.disableBtn = false;
            })
            .catch(error => {
                this.msg = "Oops something went wrong!";
                this.show = true;
                this.disableBtn = false;
            });
        }
    }
  }
};
</script>
<style>
.level2 .v-alert{
    padding: 6px 16px;
}
p{
    word-wrap: break-word;
}
</style>
