.class Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SMIMEThread"
.end annotation


# instance fields
.field private mAccId:J

.field private mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V
    .registers 4
    .param p1, "accountSMIME"    # Lcom/android/server/enterprise/email/AccountSMIMECertificate;
    .param p2, "accId"    # J

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 198
    iput-object p1, p0, mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    .line 199
    iput-wide p2, p0, mAccId:J

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 203
    iget-object v2, p0, mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v4, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 204
    .local v4, "mSMIMECertificatePath":Ljava/lang/String;
    iget-object v2, p0, mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 205
    .local v5, "mSMIMECertificatePassWord":Ljava/lang/String;
    iget-object v2, p0, mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget v8, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 206
    .local v8, "mode":I
    iget-object v2, p0, mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v1, v2, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    .line 207
    .local v1, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v9, 0x0

    .line 208
    .local v9, "ret":I
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, mAccId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " , "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_37
    const-string/jumbo v2, "eas_account_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    .line 211
    .local v0, "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    const/4 v2, 0x1

    if-ne v8, v2, :cond_66

    .line 213
    iget-wide v2, p0, mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4a} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_86

    move-result v9

    .line 230
    .end local v0    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_4b
    :goto_4b
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 215
    .restart local v0    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :cond_66
    const/4 v2, 0x2

    if-ne v8, v2, :cond_70

    .line 217
    :try_start_69
    iget-wide v2, p0, mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_4b

    .line 219
    :cond_70
    const/4 v2, 0x3

    if-ne v8, v2, :cond_4b

    .line 221
    iget-wide v2, p0, mAccId:J

    invoke-interface/range {v0 .. v5}, Landroid/app/enterprise/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_78} :catch_86

    move-result v9

    goto :goto_4b

    .line 223
    .end local v0    # "mService":Landroid/app/enterprise/IExchangeAccountPolicy;
    :catch_7a
    move-exception v6

    .line 224
    .local v6, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v9, 0x0

    .line 229
    goto :goto_4b

    .line 226
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_86
    move-exception v7

    .line 227
    .local v7, "ex":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v9, 0x0

    goto :goto_4b
.end method
