using mailservice as ms from '../db/data-model';

service APIService {//@(requires : 'system-user') {
    entity mailrequests as projection on ms.mailrequests;

    entity attachments  as projection on ms.Attachments;

    entity whitelists   as projection on ms.whitelists;

    action mass_email(mailrequests : ms.multirecipient);

    action sendmail(mailid : UUID)
}