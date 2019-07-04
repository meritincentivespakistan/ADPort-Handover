<?php namespace Modules\Nomination\Mails;

use Illuminate\Mail\Mailable;
use Modules\Account\Models\Account;
use Sichikawa\LaravelSendgridDriver\SendGrid;
use Illuminate\Queue\SerializesModels;

class SendMail extends Mailable
{
    use SendGrid, SerializesModels;

    public $account, $token, $message, $subject, $email;

    /**
     * SendMail constructor.
     * @param $email
     * @param $token
     * @param $message
     * @param $subject
     */
    public function __construct($email, $token,$message,$subject)
    {
        $this->token   = $token;
        $this->email = $email;
        $this->message = $message;
        $this->subject = $subject;
    }


    /**
     *
     */
    public function build(): void
    {
        $this->view('emails.test')
            ->to($this->email)
            ->subject($this->subject)
            ->from(config('sendgrid.emails.no-reply-email'))
            ->with([ 'mes' => $this->message ])
            ->sendgrid([
                'template_id' => config('sendgrid.templates._reset_password_code'),
            ]);
    }
}
