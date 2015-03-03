function SendMail(MailServer,MailAddress,Password,Title,Text,DataPath)
%ServerMail('smtp.qq.com','yuanyifan1993@qq.com','********','Test','','')
setpref('Internet','E_mail',MailAddress);
setpref('Internet','SMTP_Server',MailServer);
setpref('Internet','SMTP_Username',MailAddress);
setpref('Internet','SMTP_Password',Password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
if isempty(DataPath)==1
    sendmail(MailAddress,Title,Text);
else
    sendmail(MailAddress,Title,Text,DataPath);
end
end
