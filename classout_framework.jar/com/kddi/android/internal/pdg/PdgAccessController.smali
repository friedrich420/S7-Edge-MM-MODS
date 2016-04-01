.class public Lcom/kddi/android/internal/pdg/PdgAccessController;
.super Ljava/lang/Object;
.source "PdgAccessController.java"


# static fields
.field private static final AU_MARKET_PACKAGE:Ljava/lang/String; = "com.kddi.market"

.field private static final DATA_TYPE_UNKNOWN:I = -0x1

.field private static final DIALOG_PACKAGE_NAME:Ljava/lang/String; = "com.kddi.android.pdg"


# instance fields
.field private mAccessTime:J

.field private mContext:Landroid/content/Context;

.field private mDataType:I

.field private mDefaultPrivacy:Z

.field private mPackageName:Ljava/lang/String;

.field private mPrivacyEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdgAccessController( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 42
    const-string v0, "PdgAccessController() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private getDataType(I)I
    .registers 5
    .param p1, "requestType"    # I

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 142
    const/4 v0, -0x1

    .line 144
    .local v0, "result":I
    packed-switch p1, :pswitch_data_3a

    .line 154
    :goto_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 155
    return v0

    .line 148
    :pswitch_37
    move v0, p1

    .line 149
    goto :goto_20

    .line 144
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method private getDefaultPrivacy()Z
    .registers 4

    .prologue
    .line 166
    const-string v1, "boolean getDefaultPrivacy() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 168
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getDefaultPrivacy() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 169
    return v0
.end method

.method private getPrivacyEnable()Z
    .registers 4

    .prologue
    .line 159
    const-string v1, "boolean getPrivacyEnable() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 161
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getPrivacyEnable() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 162
    return v0
.end method

.method private getSelectedPrivacy()Z
    .registers 5

    .prologue
    .line 174
    const-string v2, "boolean getSelectedPrivacy() start"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 175
    iget-boolean v1, p0, mPrivacyEnable:Z

    .line 176
    .local v1, "privacyEnable":Z
    iget-boolean v0, p0, mDefaultPrivacy:Z

    .line 178
    .local v0, "defaultPrivacy":Z
    if-nez v1, :cond_12

    .line 179
    const-string v2, "boolean getSelectedPrivacy() end / return = true"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    .line 183
    .end local v0    # "defaultPrivacy":Z
    :goto_11
    return v0

    .line 182
    .restart local v0    # "defaultPrivacy":Z
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private isCallActive(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 252
    const-string/jumbo v3, "void isCallActive() start"

    invoke-static {v3}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 254
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 255
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_19

    if-ne v0, v2, :cond_31

    .line 257
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "void isCallActive() end / true state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 261
    :goto_30
    return v2

    .line 260
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "void isCallActive() end / false state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x0

    goto :goto_30
.end method

.method private sendFirstAccess(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const-string/jumbo v1, "void sendFirstAccess() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.kddi.android.pdg.intent.action.FIRST_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    const-string/jumbo v1, "void sendFirstAccess() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJZ)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataTyepe"    # I
    .param p4, "accessTime"    # J
    .param p6, "selectedPrivacy"    # Z

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean sendShowDialog( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 193
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.kddi.android.pdg.intent.action.SHOW_PDG_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v2, "com.kddi.android.pdg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string/jumbo v2, "packagename"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v2, "datatype"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v2, "accesstime"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v2, "currentprivacy"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    :try_start_5e
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_68

    .line 208
    const-string v2, "boolean sendShowDialog() end / return = true"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    :goto_67
    return v2

    .line 203
    :catch_68
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 205
    const-string v2, "boolean sendShowDialog() end / return = false"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    goto :goto_67
.end method

.method private sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataTyepe"    # I
    .param p4, "accessTime"    # J

    .prologue
    .line 231
    const-string/jumbo v1, "void sendShowNotification() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.kddi.android.pdg.intent.action.SHOW_PDG_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    const-string/jumbo v1, "void sendShowNotification() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dataTyepe"    # I
    .param p4, "accessTime"    # J

    .prologue
    .line 216
    const-string/jumbo v1, "void sendUpdatePdgStatus() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.kddi.android.pdg.intent.action.UPDATE_PDG_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    const-string/jumbo v1, "void sendUpdatePdgStatus() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 225
    return-void
.end method


# virtual methods
.method public final getPrivacy(I)Z
    .registers 16
    .param p1, "requestType"    # I

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 47
    const/4 v6, 0x1

    .line 49
    .local v6, "result":Z
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_28

    .line 50
    const-string v0, "boolean getPrivacy() end / return = true / context = null"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 51
    const/4 v10, 0x1

    .line 137
    :goto_27
    return v10

    .line 54
    :cond_28
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 55
    const-string v0, "boolean getPrivacy() end / return = true / package name empty"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 56
    const/4 v10, 0x1

    goto :goto_27

    .line 59
    :cond_37
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 60
    .local v12, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 62
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_3e
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_44} :catch_55

    move-result-object v7

    .line 67
    if-eqz v7, :cond_4e

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    .line 68
    :cond_4e
    const-string v0, "boolean getPrivacy() end / return = true / ai = null or flag system"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 69
    const/4 v10, 0x1

    goto :goto_27

    .line 63
    :catch_55
    move-exception v11

    .line 64
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "boolean getPrivacy() end / return = true / NameNotFoundException"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 65
    const/4 v10, 0x1

    goto :goto_27

    .line 72
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5d
    const-string v0, "com.kddi.market"

    iget-object v1, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 73
    const-string v0, "boolean getPrivacy() end / return = true / au Market app"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 74
    const/4 v10, 0x1

    goto :goto_27

    .line 77
    :cond_72
    invoke-direct {p0, p1}, getDataType(I)I

    move-result v0

    iput v0, p0, mDataType:I

    .line 78
    iget v0, p0, mDataType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_84

    .line 79
    const-string v0, "boolean getPrivacy() end / return = true / data tyep unknown"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 80
    const/4 v10, 0x1

    goto :goto_27

    .line 83
    :cond_84
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kddi/android/internal/pdg/PdgWhiteListManager;->contain(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 84
    const-string v0, "boolean getPrivacy() end / return = true / white list match"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 85
    const/4 v10, 0x1

    goto :goto_27

    .line 88
    :cond_95
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getFirstLaunch(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_a6

    .line 89
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, sendFirstAccess(Landroid/content/Context;)V

    .line 92
    :cond_a6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 93
    .local v8, "accessTime":J
    iput-wide v8, p0, mAccessTime:J

    .line 95
    invoke-direct {p0}, getDefaultPrivacy()Z

    move-result v0

    iput-boolean v0, p0, mDefaultPrivacy:Z

    .line 96
    invoke-direct {p0}, getPrivacyEnable()Z

    move-result v0

    iput-boolean v0, p0, mPrivacyEnable:Z

    .line 97
    iget-boolean v0, p0, mPrivacyEnable:Z

    if-nez v0, :cond_c4

    .line 98
    const-string v0, "boolean getPrivacy() end / return = true / privacy disable"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 99
    const/4 v10, 0x1

    goto/16 :goto_27

    .line 102
    :cond_c4
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    iget v2, p0, mDataType:I

    invoke-static {v0, v1, v2}, Lcom/kddi/android/internal/pdg/PdgStatusManager;->getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;

    move-result-object v13

    .line 103
    .local v13, "privacyData":Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;
    if-eqz v13, :cond_11d

    .line 104
    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_de

    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11d

    .line 106
    :cond_de
    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f9

    .line 107
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget v3, p0, mDataType:I

    iget-wide v4, p0, mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 108
    const-string v0, "boolean getPrivacy() end / return = true / state configured"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 109
    const/4 v10, 0x1

    goto/16 :goto_27

    .line 110
    :cond_f9
    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_114

    .line 111
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget v3, p0, mDataType:I

    iget-wide v4, p0, mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 112
    const-string v0, "boolean getPrivacy() end / return = false / state configured"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 113
    const/4 v10, 0x0

    goto/16 :goto_27

    .line 115
    :cond_114
    const-string/jumbo v0, "pdg settingState error !!!"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    .line 116
    const/4 v10, 0x1

    goto/16 :goto_27

    .line 121
    :cond_11d
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, isCallActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 122
    iget-boolean v10, p0, mDefaultPrivacy:Z

    .line 123
    .local v10, "defaultPrivacy":Z
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget v3, p0, mDataType:I

    iget-wide v4, p0, mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 124
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget v3, p0, mDataType:I

    iget-wide v4, p0, mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy() end / calll active / defaultPrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 129
    .end local v10    # "defaultPrivacy":Z
    :cond_157
    invoke-direct {p0}, getSelectedPrivacy()Z

    move-result v6

    .line 131
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    iget v3, p0, mDataType:I

    iget-wide v4, p0, mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJZ)Z

    move-result v0

    if-nez v0, :cond_172

    .line 132
    const-string v0, "boolean getPrivacy() end / return = true / dialog show failed "

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    .line 133
    const/4 v10, 0x1

    goto/16 :goto_27

    .line 136
    :cond_172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v10, v6

    .line 137
    goto/16 :goto_27
.end method
