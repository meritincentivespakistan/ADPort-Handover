<?php namespace Modules\Account\Mails;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Modules\Account\Models\Account;
use Sichikawa\LaravelSendgridDriver\SendGrid;

class ResetPasswordToken extends Mailable implements ShouldQueue
{
    use Queueable, SendGrid, SerializesModels;

    public $account, $token;

    /**
     * ResetPasswordToken constructor.
     *
     * @param Account $account
     * @param $token
     */
    public function __construct(Account $account, $token)
    {
        $this->token   = $token;
        $this->account = $account;
        $this->queue   = 'mails';
    }


    public function build(): void
    {
        //config('sendgrid.templates.' . "{$notifiable->communication_language}_confirm_reset_password_token")
        $this
            ->view([])
            ->to($this->account->email)
            ->from(config('sendgrid.emails.no-reply-email'))
            ->sendgrid([
                'personalizations' => [
                    [
                        'dynamic_template_data' => [
                            'url'      => config('links.front_url') . 'auth/confirm-reset-password/' . $this->token,
                            'username' => $this->account->name,
                        ],
                    ],
                ],
                'template_id'      => config('sendgrid.templates.reset_password_token'),
            ]);
    }
}