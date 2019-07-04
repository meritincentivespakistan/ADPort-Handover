import DashView from './components/Dash.vue'
import LoginView from './components/Login.vue'
import NotFoundView from './components/404.vue'

// Import Views - Dash
import DashboardView from './components/views/Dashboard.vue'

//programm
import HomeView from './components/programm/Home.vue'
import reports from './components/programm/reports.vue'
import clients from './components/programm/clients.vue'
import userSearch from './components/programm/userSearch.vue'
import userApproved from './components/programm/userApproved.vue'



import TasksView from './components/views/Tasks.vue'
import AccessView from './components/views/Access.vue'
import ServerView from './components/views/Server.vue'
import ReposView from './components/views/Repos.vue'
import addProgramm from './components/programm/add-programm.vue'

// setting route
import EditSettingView from './components/views/setting/Edit.vue'
import DomainsView from './components/views/setting/Domains.vue'
import ProgrammePointsView from './components/views/setting/ProgrammePoints.vue'

// site design route
import SiteDesignEditView from './components/views/siteDesign/SiteDesignEdit.vue'
import EmailTemplateEditView from './components/views/siteDesign/EmailTemplateEdit.vue'
import AssetsView from './components/views/siteDesign/Assets.vue'

// Routes
const routes = [

  {
    path: '/login',
    component: LoginView
  },
  {
    path: '/',
    component: HomeView
  },
  {
    path: '/reports',
    component: reports
  },
  {
    path: '/clients',
    component: reports
  },
  {
    path: '/user-search',
    component: reports
  },
  {
    path: '/user-approved',
    component: reports
  },
  {
    path: '/add-programm',
    component: addProgramm
  },
  {
    path: '/programmes/:id',
    component: DashView,
    children: [
      {
        path: 'dashboard',
        alias: '',
        component: DashboardView,
        name: 'Dashboard',
        meta: {description: 'Overview of environment'}
      }, {
        path: 'edit',
        component: EditSettingView,
        name: 'Settings',
        meta: {description: 'User settings page'}
      }, {
        path: 'domains',
        component: DomainsView,
        name: 'domains',
        meta: {description: 'Simple and advance table'}
      }, {
        path: 'programme_points',
        component: ProgrammePointsView,
        name: 'Programme Points',
        meta: {description: 'Simple and advance Programme Points'}
      }, {
        path: 'site-design/edit',
        component: SiteDesignEditView,
        name: 'Site Design',
        meta: {description: 'Site Design'}
      }, {
        path: 'email-template/edit',
        component: EmailTemplateEditView,
        name: 'Email Template',
        meta: {description: 'Email Template'}
      }, {
        path: 'assets',
        component: AssetsView,
        name: 'Assets',
        meta: {description: 'Site Design Assets'}
      }, {
        path: 'tasks',
        component: TasksView,
        name: 'Tasks',
        meta: {description: 'Tasks page in the form of a timeline'}
      }, {
        path: 'access',
        component: AccessView,
        name: 'Access',
        meta: {description: 'Example of using maps'}
      }, {
        path: 'server',
        component: ServerView,
        name: 'Servers',
        meta: {description: 'List of our servers', requiresAuth: true}
      }, {
        path: 'repos',
        component: ReposView,
        name: 'Repository',
        meta: {description: 'List of popular javascript repos'}
      }

    ]
  }, {
    // not found handler
    path: '*',
    component: NotFoundView
  }
]

export default routes
