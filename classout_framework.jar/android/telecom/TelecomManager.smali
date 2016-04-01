.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

.field public static final ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

.field public static final DTMF_CHARACTER_PAUSE:C = ','

.field public static final DTMF_CHARACTER_WAIT:C = ';'

.field public static final EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"

.field public static final EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.intent.extra.CURRENT_TTY_MODE"

.field public static final EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.intent.extra.TTY_PREFERRED"

.field public static final EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"

.field public static final GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final PRESENTATION_ALLOWED:I = 0x1

.field public static final PRESENTATION_PAYPHONE:I = 0x4

.field public static final PRESENTATION_RESTRICTED:I = 0x2

.field public static final PRESENTATION_UNKNOWN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TelecomManager"

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 410
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_c

    .line 411
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 415
    :goto_b
    return-void

    .line 413
    :cond_c
    iput-object p1, p0, mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method public static from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 402
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 2

    .prologue
    .line 1258
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method private isServiceConnected()Z
    .registers 4

    .prologue
    .line 1262
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    .line 1263
    .local v0, "isConnected":Z
    :goto_7
    if-nez v0, :cond_10

    .line 1264
    const-string v1, "TelecomManager"

    const-string v2, "Telecom Service not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_10
    return v0

    .line 1262
    .end local v0    # "isConnected":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public acceptRingingCall()V
    .registers 4

    .prologue
    .line 982
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 983
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 988
    :cond_d
    :goto_d
    return-void

    .line 985
    :catch_e
    move-exception v0

    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1056
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1057
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-nez p2, :cond_11

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_11
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 1063
    :cond_14
    :goto_14
    return-void

    .line 1060
    :catch_15
    move-exception v0

    .line 1061
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1079
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1080
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    if-nez p2, :cond_11

    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_11
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 1086
    :cond_14
    :goto_14
    return-void

    .line 1083
    :catch_15
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new unknown call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public cancelMissedCallsNotification()V
    .registers 5

    .prologue
    .line 1162
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1163
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_f

    .line 1165
    :try_start_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1170
    :cond_f
    :goto_f
    return-void

    .line 1166
    :catch_10
    move-exception v0

    .line 1167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public clearAccounts()V
    .registers 4

    .prologue
    .line 739
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 740
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 745
    :cond_13
    :goto_13
    return-void

    .line 742
    :catch_14
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#clearAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public clearAccountsForPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 753
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 754
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 759
    :cond_13
    :goto_13
    return-void

    .line 756
    :catch_14
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public clearPhoneAccounts()V
    .registers 1

    .prologue
    .line 729
    invoke-virtual {p0}, clearAccounts()V

    .line 730
    return-void
.end method

.method public enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 7
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 1247
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1248
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_9

    .line 1250
    :try_start_6
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1255
    :cond_9
    :goto_9
    return-void

    .line 1251
    :catch_a
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error enablePhoneAbbount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public endCall()Z
    .registers 4

    .prologue
    .line 963
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 964
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 969
    :goto_e
    return v1

    .line 966
    :catch_f
    move-exception v0

    .line 967
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1144
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1145
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1b

    .line 1147
    :try_start_8
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    move-result-object v2

    .line 1152
    :goto_12
    return-object v2

    .line 1148
    :catch_13
    move-exception v0

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_12
.end method

.method public getAllPhoneAccountHandles()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 676
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 681
    :goto_e
    return-object v1

    .line 678
    :catch_f
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_e
.end method

.method public getAllPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 658
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 663
    :goto_e
    return-object v1

    .line 660
    :catch_f
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_e
.end method

.method public getAllPhoneAccountsCount()I
    .registers 4

    .prologue
    .line 639
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 640
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 645
    :goto_e
    return v1

    .line 642
    :catch_f
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCallCapablePhoneAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeDisabledAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 584
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 591
    :goto_14
    return-object v1

    .line 587
    :catch_15
    move-exception v0

    .line 588
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_14
.end method

.method public getCallState()I
    .registers 4

    .prologue
    .line 928
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 929
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 934
    :goto_e
    return v1

    .line 931
    :catch_f
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling getCallState()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0}, getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTtyMode()I
    .registers 4

    .prologue
    .line 1032
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1033
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 1038
    :goto_14
    return v1

    .line 1035
    :catch_15
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the current TTY mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getDefaultDialerPackage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 787
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 788
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 793
    :goto_e
    return-object v1

    .line 790
    :catch_f
    move-exception v0

    .line 791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .registers 5
    .param p1, "uriScheme"    # Ljava/lang/String;

    .prologue
    .line 438
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 439
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 445
    :goto_14
    return-object v1

    .line 442
    :catch_15
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getDefaultPhoneApp()Landroid/content/ComponentName;
    .registers 4

    .prologue
    .line 770
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 771
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 776
    :goto_e
    return-object v1

    .line 773
    :catch_f
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 884
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 885
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 891
    :goto_14
    return-object v1

    .line 888
    :catch_15
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .registers 5
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 621
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 622
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 627
    :goto_e
    return-object v1

    .line 624
    :catch_f
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getPhoneAccountsForPackage()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 604
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 609
    :goto_14
    return-object v1

    .line 606
    :catch_15
    move-exception v0

    .line 607
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 552
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 558
    :goto_14
    return-object v1

    .line 555
    :catch_15
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_14
.end method

.method public getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .prologue
    .line 493
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 494
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 499
    :goto_e
    return-object v1

    .line 496
    :catch_f
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 513
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 514
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 519
    :goto_e
    return-object v1

    .line 516
    :catch_f
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getSystemDialerPackage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 829
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 830
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 835
    :goto_e
    return-object v1

    .line 832
    :catch_f
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the system dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .prologue
    .line 461
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 462
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 467
    :goto_e
    return-object v1

    .line 464
    :catch_f
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 866
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 867
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 873
    :goto_14
    return-object v1

    .line 870
    :catch_15
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public handleMmi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1101
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1102
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_19

    .line 1104
    :try_start_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v2

    .line 1109
    :goto_10
    return v2

    .line 1105
    :catch_11
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .registers 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1125
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1126
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_19

    .line 1128
    :try_start_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v2

    .line 1134
    :goto_10
    return v2

    .line 1130
    :catch_11
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isInCall()Z
    .registers 4

    .prologue
    .line 903
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 904
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 909
    :goto_14
    return v1

    .line 906
    :catch_15
    move-exception v0

    .line 907
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isRinging()Z
    .registers 4

    .prologue
    .line 945
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 946
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 951
    :goto_14
    return v1

    .line 948
    :catch_15
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isTtySupported()Z
    .registers 4

    .prologue
    .line 1011
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1012
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 1017
    :goto_14
    return v1

    .line 1014
    :catch_15
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get TTY supported state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 847
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 848
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v1

    .line 854
    :goto_14
    return v1

    .line 851
    :catch_15
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1224
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1225
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_1f

    .line 1226
    if-nez p1, :cond_f

    .line 1227
    const-string v2, "TelecomManager"

    const-string v3, "Cannot place call to empty address."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_f
    if-nez p2, :cond_16

    :try_start_11
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "extras":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_16
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 1236
    :cond_1f
    :goto_1f
    return-void

    .line 1232
    :catch_20
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#placeCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .registers 5
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 700
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 701
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 706
    :cond_d
    :goto_d
    return-void

    .line 703
    :catch_e
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public setDefaultDialer(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 812
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 813
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 818
    :goto_e
    return v1

    .line 815
    :catch_f
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to set the default dialer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 476
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 477
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 482
    :cond_d
    :goto_d
    return-void

    .line 479
    :catch_e
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public showInCallScreen(Z)V
    .registers 6
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1183
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 1184
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_f

    .line 1186
    :try_start_6
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1191
    :cond_f
    :goto_f
    return-void

    .line 1187
    :catch_10
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#showCallScreen"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public silenceRinger()V
    .registers 4

    .prologue
    .line 995
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 996
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1001
    :cond_13
    :goto_13
    return-void

    .line 998
    :catch_14
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method public unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 715
    :try_start_0
    invoke-direct {p0}, isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 716
    invoke-direct {p0}, getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 721
    :cond_d
    :goto_d
    return-void

    .line 718
    :catch_e
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
