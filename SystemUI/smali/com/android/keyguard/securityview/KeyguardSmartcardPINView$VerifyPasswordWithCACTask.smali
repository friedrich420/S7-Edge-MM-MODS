.class Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;
.super Landroid/os/AsyncTask;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyPasswordWithCACTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field errorMsgId:I

.field password:Ljava/lang/String;

.field status:Z

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 174
    iput-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 175
    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    .param p2, "x1"    # Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$1;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;-><init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 14
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 188
    const/4 v7, -0x1

    .line 189
    .local v7, "ret":I
    const/4 v6, -0x1

    .line 191
    .local v6, "remainCnt":I
    const/4 v2, -0x1

    .line 192
    .local v2, "STATE_UNKNOWN":I
    const-string v0, "state"

    .line 193
    .local v0, "LOCK_STATE":Ljava/lang/String;
    const-string v1, "remainCnt"

    .line 195
    .local v1, "REMAIN_COUNT":Ljava/lang/String;
    const-string v4, "com.sec.smartcard.manager:com.samsung.ucs.agent.baiMobile"

    .line 196
    .local v4, "csName":Ljava/lang/String;
    const-string v12, "com.samsung.ucs.ucsservice"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v9

    .line 197
    .local v9, "ucmService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v9, :cond_1

    .line 198
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v12

    const-string v13, "failed to get UCS service"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    :goto_0
    return v11

    .line 202
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 205
    :try_start_0
    const-string v12, ""

    invoke-static {v4, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "uri":Ljava/lang/String;
    invoke-interface {v9, v10, p1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 207
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 211
    const-string v12, "state"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 212
    .local v8, "state":I
    const-string v12, "remainCnt"

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 213
    const/16 v11, 0x83

    if-ne v8, v11, :cond_3

    .line 214
    const/4 v7, 0x0

    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "state":I
    .end local v10    # "uri":Ljava/lang/String;
    :cond_2
    :goto_1
    move v11, v7

    .line 228
    goto :goto_0

    .line 215
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "state":I
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v11, 0x84

    if-ne v8, v11, :cond_4

    .line 216
    const/4 v7, 0x1

    goto :goto_1

    .line 217
    :cond_4
    const/16 v11, 0x85

    if-ne v8, v11, :cond_5

    .line 218
    const/4 v7, 0x2

    goto :goto_1

    .line 219
    :cond_5
    const/16 v11, 0x86

    if-ne v8, v11, :cond_6

    .line 220
    const/4 v7, 0x4

    goto :goto_1

    .line 221
    :cond_6
    const/16 v11, 0x87

    if-ne v8, v11, :cond_2

    .line 222
    const/16 v7, 0x8

    goto :goto_1

    .line 224
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "state":I
    .end local v10    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 225
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    .line 232
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doInBackground():VerifyPasswordWithCACTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "ret":I
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyPIN(withUCS-BM): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 242
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPostExecute():VerifyPasswordWithCACTask result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-boolean v4, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    .line 244
    iput v4, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 245
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_internalerror:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    .line 269
    :goto_0
    const/4 v0, 0x0

    .line 270
    .local v0, "keyguardscpinview":Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 272
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mCurrent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_1
    return-void

    .line 247
    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    goto :goto_0

    .line 250
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_invalid_pin:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 253
    :pswitch_3
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_locked:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 256
    :pswitch_4
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_expired:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 259
    :pswitch_5
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_connectionerror:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 262
    :pswitch_6
    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    iput v1, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    goto :goto_0

    .line 275
    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    :cond_0
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mCurrent:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$500()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyguardscpinview":Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    check-cast v0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    .restart local v0    # "keyguardscpinview":Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;
    if-nez v0, :cond_1

    .line 277
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 280
    :cond_1
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$600(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_2

    .line 282
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VerifyPasswordWithCACTask mHandler == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    :cond_2
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$600(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;-><init>(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 180
    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnPreExecute():VerifyPasswordWithCACTask"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$200(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_smartcard_check_pin:I

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(IZ)V

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setPasswordEntryEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$300(Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;Z)V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->setKeepScreenOn(Z)V

    .line 184
    # setter for: Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->mSmartcardAuthProgress:Z
    invoke-static {v2}, Lcom/android/keyguard/securityview/KeyguardSmartcardPINView;->access$402(Z)Z

    .line 185
    return-void
.end method
