.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_STRING:Ljava/lang/String; = "certificate"

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, SYSTEM_CREDENTIAL_UIDS:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .registers 3
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, mError:I

    .line 147
    iput-object p1, p0, mBinder:Landroid/security/IKeystoreService;

    .line 148
    invoke-static {}, getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 151
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, lMdmService:Landroid/sec/enterprise/IEDMProxy;

    .line 154
    return-void
.end method

.method private auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v1, 0x1

    .line 384
    invoke-direct {p0, p2}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v9

    .line 385
    .local v9, "keyStoreString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 386
    invoke-direct {p0, p1}, isPrivateKeyPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 404
    :cond_11
    return-void

    .line 393
    :cond_12
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 394
    .local v7, "certificate":Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_89

    const/4 v0, 0x5

    :goto_25
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_8b

    const-string v2, " succeeded."

    :goto_48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Keystore : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Alias : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Subject : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v7, :cond_8e

    const-string v2, "Not available"

    :goto_6a
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Issuer : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v7, :cond_93

    const-string v2, "Not available"

    :goto_78
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v1}, getUserId(IZ)I

    move-result v6

    move v2, p4

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_16

    :cond_89
    move v0, v1

    goto :goto_25

    :cond_8b
    const-string v2, " failed."

    goto :goto_48

    :cond_8e
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_6a

    :cond_93
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_78
.end method

.method private convertFromPem([B)Ljava/util/List;
    .registers 6
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1161
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_7

    .line 1162
    :try_start_3
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_6} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_6} :catch_21

    move-result-object v0

    .line 1172
    :cond_7
    :goto_7
    if-nez v0, :cond_e

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_e
    return-object v0

    .line 1164
    :catch_f
    move-exception v1

    .line 1165
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1166
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_18
    move-exception v1

    .line 1167
    .local v1, "ex":Ljava/security/cert/CertificateException;
    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1168
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    :catch_21
    move-exception v1

    .line 1169
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "KeyStore"

    const-string v3, "Failed converting certificate from pem"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 157
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 158
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_e

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_e
    return-object v0
.end method

.method private getFingerprintOnlySid()J
    .registers 5

    .prologue
    .line 1005
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1006
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v0, :cond_f

    .line 1007
    const-wide/16 v2, 0x0

    .line 1012
    :goto_e
    return-wide v2

    :cond_f
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    goto :goto_e
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "keystore":Landroid/security/IKeystoreService;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-nez v1, :cond_17

    .line 169
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 177
    :goto_11
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, <init>(Landroid/security/IKeystoreService;)V

    return-object v1

    .line 173
    :cond_17
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    goto :goto_11
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 3
    .param p0, "errorCode"    # I

    .prologue
    .line 909
    if-lez p0, :cond_4f

    .line 911
    packed-switch p0, :pswitch_data_64

    .line 929
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 940
    :goto_e
    return-object v0

    .line 913
    :pswitch_f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 915
    :pswitch_17
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 917
    :pswitch_1f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 919
    :pswitch_27
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 921
    :pswitch_2f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 923
    :pswitch_37
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 925
    :pswitch_3f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 927
    :pswitch_47
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 933
    :cond_4f
    packed-switch p0, :pswitch_data_86

    .line 940
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 937
    :pswitch_5c
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    goto :goto_e

    .line 911
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_f
        :pswitch_17
        :pswitch_1f
        :pswitch_27
        :pswitch_5
        :pswitch_2f
        :pswitch_37
        :pswitch_3f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_47
    .end packed-switch

    .line 933
    :pswitch_data_86
    .packed-switch -0x10
        :pswitch_5c
    .end packed-switch
.end method

.method private getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-string v0, "certificate"

    .line 1134
    .local v0, "keyString":Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 1135
    const-string v1, "USRPKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1136
    const-string/jumbo v0, "private key"

    .line 1141
    :cond_f
    :goto_f
    return-object v0

    .line 1137
    :cond_10
    const-string v1, "USRSKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1138
    const-string/jumbo v0, "secret key"

    goto :goto_f
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 1112
    const-string v0, ""

    .line 1113
    .local v0, "keystore":Ljava/lang/String;
    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_9

    .line 1114
    const-string v0, "Wi-Fi"

    .line 1119
    :cond_8
    :goto_8
    return-object v0

    .line 1115
    :cond_9
    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_8

    .line 1117
    :cond_14
    const-string v0, "VPN and Apps"

    goto :goto_8
.end method

.method private getRequestorInfo()Ljava/lang/String;
    .registers 17

    .prologue
    .line 188
    const-string v10, ""

    .line 189
    .local v10, "role":Ljava/lang/String;
    const-string v7, ""

    .line 190
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_f6

    .line 191
    const-string v10, "SystemApp"

    .line 196
    :goto_e
    :try_start_e
    const-string v11, "android.app.ActivityManagerNative"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getDefault"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 197
    .local v3, "mAm":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getRunningAppProcesses"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 198
    .local v6, "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 199
    .local v8, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    if-ne v11, v12, :cond_3f

    .line 200
    iget-object v7, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 205
    .end local v8    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_55
    const-string v11, "android.os.ServiceManager"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getService"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "enterprise_policy"

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 207
    .local v0, "bEdm":Landroid/os/IBinder;
    const-string v11, "android.app.enterprise.IEnterpriseDeviceManager$Stub"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "asInterface"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/os/IBinder;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, "mEdm":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "packageHasActiveAdmins"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 211
    .local v5, "mthdCheck":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v5, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 212
    .local v9, "result":Z
    if-eqz v9, :cond_fa

    .line 213
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|Administrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_cf} :catch_10f

    move-result-object v10

    .line 221
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mAm":Ljava/lang/Object;
    .end local v4    # "mEdm":Ljava/lang/Object;
    .end local v5    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v6    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v9    # "result":Z
    :goto_d0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " role="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 193
    :cond_f6
    const-string v10, "UserApp"

    goto/16 :goto_e

    .line 215
    .restart local v0    # "bEdm":Landroid/os/IBinder;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "mAm":Ljava/lang/Object;
    .restart local v4    # "mEdm":Ljava/lang/Object;
    .restart local v5    # "mthdCheck":Ljava/lang/reflect/Method;
    .restart local v6    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .restart local v9    # "result":Z
    :cond_fa
    :try_start_fa
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|NonAdministrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10d} :catch_10f

    move-result-object v10

    goto :goto_d0

    .line 217
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mAm":Ljava/lang/Object;
    .end local v4    # "mEdm":Ljava/lang/Object;
    .end local v5    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v6    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v9    # "result":Z
    :catch_10f
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "KeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Administrator status cannot be defined for requestor: uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d0
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 182
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 184
    :cond_c
    iget-object v0, p0, mToken:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserId(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, getUserId(IZ)I

    move-result v0

    return v0
.end method

.method private getUserId(IZ)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "isAuditLog"    # Z

    .prologue
    .line 1096
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1097
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 1098
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1103
    :cond_b
    :goto_b
    return v0

    .line 1099
    :cond_c
    if-eqz p2, :cond_b

    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_b

    .line 1101
    const/4 v0, -0x1

    goto :goto_b
.end method

.method private isPrivateKeyPrefix(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1150
    invoke-direct {p0, p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private refreshRollbackUserKeystore(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1186
    iget-object v1, p0, lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_9

    .line 1188
    :try_start_4
    iget-object v1, p0, lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1193
    :cond_9
    :goto_9
    return-void

    .line 1189
    :catch_a
    move-exception v0

    .line 1190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 807
    :goto_6
    return v1

    .line 805
    :catch_7
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public addAuthToken([B)I
    .registers 5
    .param p1, "authToken"    # [B

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 838
    :goto_6
    return v1

    .line 836
    :catch_7
    move-exception v0

    .line 837
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public addRngEntropy([B)Z
    .registers 6
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 687
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->addRngEntropy([B)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 690
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 687
    goto :goto_a

    .line 688
    :catch_d
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 690
    goto :goto_a
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 14
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B

    .prologue
    .line 772
    :try_start_0
    iget-object v0, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v0

    .line 775
    :goto_f
    return-object v0

    .line 773
    :catch_10
    move-exception v7

    .line 774
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public clearUid(I)Z
    .registers 14
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 651
    :try_start_2
    iget-object v0, p0, mBinder:Landroid/security/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result v9

    .line 653
    .local v9, "ret":I
    invoke-direct {p0, p1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v8

    .line 654
    .local v8, "keyStoreString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 655
    if-ne v9, v10, :cond_43

    .line 656
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing credentials succeeded. Keystore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 666
    :cond_3f
    :goto_3f
    if-ne v9, v10, :cond_ab

    move v0, v10

    .line 677
    .end local v9    # "ret":I
    :goto_42
    return v0

    .line 660
    .restart local v9    # "ret":I
    :cond_43
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing credentials failed. Keystore : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_6d} :catch_6e

    goto :goto_3f

    .line 667
    .end local v8    # "keyStoreString":Ljava/lang/String;
    .end local v9    # "ret":I
    :catch_6e
    move-exception v7

    .line 668
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-direct {p0, p1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v8

    .line 671
    .restart local v8    # "keyStoreString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 672
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing credentials failed. Keystore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v10}, getUserId(IZ)I

    move-result v6

    move v0, v10

    move v1, v10

    move v2, v11

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_a9
    move v0, v11

    .line 677
    goto :goto_42

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "ret":I
    :cond_ab
    move v0, v11

    .line 666
    goto :goto_42
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 420
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 415
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 412
    goto :goto_a

    .line 413
    :catch_d
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 415
    goto :goto_a
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 407
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .registers 20
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 336
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v13

    .line 338
    .local v13, "isAuditLogEnabledAsUser":Z
    const-string v15, ""

    .line 339
    .local v15, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v14

    .line 340
    .local v14, "isMdfEnforced":Z
    if-eqz v14, :cond_39

    .line 341
    const-string v3, " (Keystore=%s, key=%s, uid=%s, requested by %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-direct/range {p0 .. p0}, getRequestorInfo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 347
    :cond_39
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v11, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v13, :cond_4c

    .line 349
    invoke-virtual/range {p0 .. p2}, getByUid(Ljava/lang/String;I)[B

    move-result-object v10

    .line 350
    .local v10, "cert":[B
    if-eqz v10, :cond_4c

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, convertFromPem([B)Ljava/util/List;

    move-result-object v11

    .line 356
    .end local v10    # "cert":[B
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v3, v0, mBinder:Landroid/security/IKeystoreService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v16

    .line 357
    .local v16, "ret":I
    if-eqz v14, :cond_93

    .line 358
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_ab

    .line 359
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key destruction activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " succeeded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9}, getUserId(IZ)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 366
    :cond_93
    :goto_93
    if-eqz v13, :cond_a4

    .line 367
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_144

    const/4 v3, 0x1

    :goto_9b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v3}, auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V

    .line 369
    :cond_a4
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_147

    const/4 v3, 0x1

    .line 379
    .end local v16    # "ret":I
    :goto_aa
    return v3

    .line 361
    .restart local v16    # "ret":I
    :cond_ab
    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_93

    .line 362
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key destruction activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9}, getUserId(IZ)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_f0} :catch_f1

    goto :goto_93

    .line 370
    .end local v16    # "ret":I
    :catch_f1
    move-exception v12

    .line 371
    .local v12, "e":Landroid/os/RemoteException;
    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    if-eqz v14, :cond_135

    .line 373
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key destruction activity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cannot connect to keystore"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9}, getUserId(IZ)I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 376
    :cond_135
    if-eqz v13, :cond_141

    .line 377
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v3}, auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V

    .line 379
    :cond_141
    const/4 v3, 0x0

    goto/16 :goto_aa

    .line 367
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v16    # "ret":I
    :cond_144
    const/4 v3, 0x0

    goto/16 :goto_9b

    .line 369
    :cond_147
    const/4 v3, 0x0

    goto/16 :goto_aa
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 9
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 628
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 631
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 628
    goto :goto_a

    .line 629
    :catch_d
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 631
    goto :goto_a
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;

    .prologue
    .line 762
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 765
    :goto_6
    return-object v1

    .line 763
    :catch_7
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B

    .prologue
    .line 799
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B

    .prologue
    .line 791
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 794
    :goto_6
    return-object v1

    .line 792
    :catch_7
    move-exception v0

    .line 793
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 794
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .registers 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, mBinder:Landroid/security/IKeystoreService;

    new-instance v6, Landroid/security/KeystoreArguments;

    invoke-direct {v6, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v8

    .line 520
    .local v8, "ret":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_43

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 521
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key generation failed. with error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_43} :catch_4a

    .line 524
    :cond_43
    const/4 v0, 0x1

    if-ne v8, v0, :cond_48

    const/4 v0, 0x1

    .line 531
    .end local v8    # "ret":I
    :goto_47
    return v0

    .line 524
    .restart local v8    # "ret":I
    :cond_48
    const/4 v0, 0x0

    goto :goto_47

    .line 525
    .end local v8    # "ret":I
    :catch_4a
    move-exception v7

    .line 526
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 528
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key generation failed. cannot connect to KeyStore"

    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 531
    :cond_71
    const/4 v0, 0x0

    goto :goto_47
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 16
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 697
    :try_start_0
    iget-object v0, p0, mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v8

    .line 698
    .local v8, "ret":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_3f

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 699
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key generation failed. with error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p4, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 709
    .end local v8    # "ret":I
    :cond_3f
    :goto_3f
    return v8

    .line 703
    :catch_40
    move-exception v7

    .line 704
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 706
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Key generation failed. cannot connect to keystore"

    const/4 v6, 0x1

    invoke-direct {p0, p4, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 709
    :cond_67
    const/4 v8, 0x4

    goto :goto_3f
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "flags"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 715
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 255
    :goto_6
    return-object v1

    .line 253
    :catch_7
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getByUid(Ljava/lang/String;I)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get_by_uid(Ljava/lang/String;I)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1083
    :goto_6
    return-object v1

    .line 1079
    :catch_7
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getInvalidKeyException(Ljava/lang/String;I)Ljava/security/InvalidKeyException;
    .registers 4
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 1020
    invoke-static {p2}, getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, getInvalidKeyException(Ljava/lang/String;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .registers 15
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "e"    # Landroid/security/KeyStoreException;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 952
    invoke-virtual {p2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_86

    .line 1000
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v8, "Keystore operation failed"

    invoke-direct {v5, v8, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object v5

    .line 954
    :sswitch_12
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_11

    .line 956
    :sswitch_18
    new-instance v5, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v5}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    goto :goto_11

    .line 958
    :sswitch_1e
    new-instance v5, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v5}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    goto :goto_11

    .line 967
    :sswitch_24
    new-instance v3, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v3}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 968
    .local v3, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v3}, getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    .line 970
    .local v2, "getKeyCharacteristicsErrorCode":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3c

    .line 971
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v8, "Failed to obtained key characteristics"

    invoke-static {v2}, getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 975
    :cond_3c
    const v5, -0x5ffffe0a

    invoke-virtual {v3, v5}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v4

    .line 977
    .local v4, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 979
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    goto :goto_11

    .line 981
    :cond_4f
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v6

    .line 982
    .local v6, "rootSid":J
    cmp-long v5, v6, v10

    if-eqz v5, :cond_67

    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 985
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_11

    .line 988
    :cond_67
    invoke-direct {p0}, getFingerprintOnlySid()J

    move-result-wide v0

    .line 989
    .local v0, "fingerprintOnlySid":J
    cmp-long v5, v0, v10

    if-eqz v5, :cond_7f

    invoke-static {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 993
    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    goto :goto_11

    .line 997
    :cond_7f
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    goto :goto_11

    .line 952
    nop

    :sswitch_data_86
    .sparse-switch
        -0x1a -> :sswitch_24
        -0x19 -> :sswitch_18
        -0x18 -> :sswitch_1e
        0x2 -> :sswitch_12
        0xf -> :sswitch_24
    .end sparse-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 724
    :goto_6
    return v1

    .line 722
    :catch_7
    move-exception v0

    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 682
    iget v0, p0, mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 614
    :try_start_2
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_11

    move-result-wide v2

    .line 615
    .local v2, "millis":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    .line 622
    .end local v2    # "millis":J
    :goto_c
    return-wide v4

    .line 619
    .restart local v2    # "millis":J
    :cond_d
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    goto :goto_c

    .line 620
    .end local v2    # "millis":J
    :catch_11
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v6, "Cannot connect to keystore"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public grant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 595
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 592
    goto :goto_a

    .line 593
    :catch_d
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 595
    goto :goto_a
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 20
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 730
    const-string v10, ""

    .line 731
    .local v10, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (alias="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requested by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, getRequestorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 735
    :cond_3b
    :try_start_3b
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    .line 736
    .local v11, "ret":I
    const/4 v1, 0x1

    if-ne v11, v1, :cond_88

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 737
    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key importing activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v7}, getUserId(IZ)I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 750
    .end local v11    # "ret":I
    :cond_87
    :goto_87
    return v11

    .line 739
    .restart local v11    # "ret":I
    :cond_88
    const/4 v1, 0x1

    if-eq v11, v1, :cond_87

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 740
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key importing activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v7}, getUserId(IZ)I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_cd} :catch_ce

    goto :goto_87

    .line 744
    .end local v11    # "ret":I
    :catch_ce
    move-exception v9

    .line 745
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 747
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key importing activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot connect to keystore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v7}, getUserId(IZ)I

    move-result v7

    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 750
    :cond_114
    const/4 v11, 0x4

    goto/16 :goto_87
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .registers 15
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 756
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .registers 15
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 536
    const-string v8, ""

    .line 537
    .local v8, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 538
    const-string v0, " (Keystore=%s, keyName=%s, uid=%s, requested by %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p3}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0}, getRequestorInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 543
    :cond_29
    :try_start_29
    iget-object v0, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result v9

    .line 544
    .local v9, "ret":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_6d

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 545
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key importing activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p3, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 557
    :cond_68
    :goto_68
    const/4 v0, 0x1

    if-ne v9, v0, :cond_f8

    const/4 v0, 0x1

    .line 568
    .end local v9    # "ret":I
    :goto_6c
    return v0

    .line 550
    .restart local v9    # "ret":I
    :cond_6d
    const/4 v0, 0x1

    if-eq v9, v0, :cond_68

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 551
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key importing activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p3, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_b0} :catch_b1

    goto :goto_68

    .line 558
    .end local v9    # "ret":I
    :catch_b1
    move-exception v7

    .line 559
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key importing activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot connect to keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, p3, v6}, getUserId(IZ)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 568
    :cond_f5
    const/4 v0, 0x0

    goto/16 :goto_6c

    .line 557
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "ret":I
    :cond_f8
    const/4 v0, 0x0

    goto/16 :goto_6c
.end method

.method public insert(Ljava/lang/String;[BII)I
    .registers 23
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 267
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getUserId(I)I

    move-result v17

    .line 268
    .local v17, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v15

    .line 270
    .local v15, "keyStoreString":Ljava/lang/String;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v4, v0, v5, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZI)Z

    move-result v4

    if-nez v4, :cond_15c

    .line 272
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_152

    invoke-static/range {v17 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, convertFromPem([B)Ljava/util/List;

    move-result-object v12

    .line 274
    .local v12, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_152

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 275
    .local v11, "certInfo":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed. Keystore : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Alias : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Subject : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_146

    const-string v9, "Not available"

    :goto_89
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Issuer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_14c

    const-string v9, "Not available"

    :goto_97
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v10}, getUserId(IZ)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_ab} :catch_ac

    goto :goto_3b

    .line 314
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "keyStoreString":Ljava/lang/String;
    .end local v17    # "userId":I
    :catch_ac
    move-exception v13

    .line 317
    .local v13, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getKeystoreString(I)Ljava/lang/String;

    move-result-object v15

    .line 318
    .restart local v15    # "keyStoreString":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28f

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getUserId(I)I

    move-result v4

    invoke-static {v4}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_28f

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, convertFromPem([B)Ljava/util/List;

    move-result-object v12

    .line 320
    .restart local v12    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_d5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 321
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed. Keystore : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Alias : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Subject : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_283

    const-string v9, "Not available"

    :goto_123
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Issuer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_289

    const-string v9, "Not available"

    :goto_131
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v10}, getUserId(IZ)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_d5

    .line 275
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v17    # "userId":I
    :cond_146
    :try_start_146
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    goto/16 :goto_89

    :cond_14c
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    goto/16 :goto_97

    .line 282
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_152
    const-string v4, "KeyStore"

    const-string v5, "Put not allowed. Untrusted certificate."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/16 v16, 0x6

    .line 331
    .end local v17    # "userId":I
    :cond_15b
    :goto_15b
    return v16

    .line 286
    .restart local v17    # "userId":I
    :cond_15c
    move-object/from16 v0, p0

    iget-object v4, v0, mBinder:Landroid/security/IKeystoreService;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v16

    .line 288
    .local v16, "ret":I
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15b

    invoke-static/range {v17 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, convertFromPem([B)Ljava/util/List;

    move-result-object v12

    .line 290
    .restart local v12    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_204

    .line 291
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_189
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 292
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " succeeded. Keystore : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Alias : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Subject : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_1fa

    const-string v9, "Not available"

    :goto_1d7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Issuer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_1ff

    const-string v9, "Not available"

    :goto_1e5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v10}, getUserId(IZ)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_189

    :cond_1fa
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    goto :goto_1d7

    :cond_1ff
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    goto :goto_1e5

    .line 299
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_204
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_208
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 300
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed. Keystore : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Alias : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Subject : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_279

    const-string v9, "Not available"

    :goto_256
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Issuer : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v11, :cond_27e

    const-string v9, "Not available"

    :goto_264
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v10}, getUserId(IZ)I

    move-result v10

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_208

    :cond_279
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    goto :goto_256

    :cond_27e
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;
    :try_end_281
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_281} :catch_ac

    move-result-object v9

    goto :goto_264

    .line 321
    .end local v16    # "ret":I
    .end local v17    # "userId":I
    .restart local v13    # "e":Landroid/os/RemoteException;
    :cond_283
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    goto/16 :goto_123

    :cond_289
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    goto/16 :goto_131

    .line 330
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_28f
    const-string v4, "KeyStore"

    const-string v5, "Cannot connect to keystore"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const/16 v16, 0x4

    goto/16 :goto_15b
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 513
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 505
    :try_start_1
    iget-object v2, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    .line 508
    :cond_a
    :goto_a
    return v1

    .line 506
    :catch_b
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public isEmptyForSystemCredential()Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1200
    const-string v8, "KeyStore"

    const-string v9, "isEmptyForSystemCredential"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1202
    .local v5, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 1203
    :cond_30
    sget-object v1, SYSTEM_CREDENTIAL_UIDS:[I

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_34
    if-ge v3, v4, :cond_18

    aget v6, v1, v3

    .line 1204
    .local v6, "uid":I
    const-string v8, ""

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_6d

    array-length v8, v0

    if-lez v8, :cond_6d

    .line 1206
    const-string v8, "KeyStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEmptyForSystemCredential : ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pi":Landroid/content/pm/UserInfo;
    .end local v6    # "uid":I
    :goto_6c
    return v7

    .line 1203
    .restart local v0    # "aliases":[Ljava/lang/String;
    .restart local v1    # "arr$":[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "pi":Landroid/content/pm/UserInfo;
    .restart local v6    # "uid":I
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1211
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "uid":I
    :cond_70
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, isEmpty(I)Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_6c

    .line 1216
    .end local v5    # "pi":Landroid/content/pm/UserInfo;
    :cond_79
    const/4 v7, 0x1

    goto :goto_6c
.end method

.method public isHardwareBacked()Z
    .registers 2

    .prologue
    .line 637
    const-string v0, "RSA"

    invoke-virtual {p0, v0}, isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_13

    move-result v3

    if-ne v3, v1, :cond_11

    .line 645
    :goto_10
    return v1

    :cond_11
    move v1, v2

    .line 642
    goto :goto_10

    .line 643
    :catch_13
    move-exception v0

    .line 644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 645
    goto :goto_10
.end method

.method public isNeedMigration(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1037
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1051
    :goto_8
    :pswitch_8
    return v2

    .line 1042
    :cond_9
    :try_start_9
    iget-object v4, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->getState_MDFPP(I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_1a

    move-result v1

    .line 1048
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_2c

    .line 1052
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 1043
    .end local v1    # "ret":I
    :catch_1a
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_28
    move v2, v3

    .line 1049
    goto :goto_8

    :pswitch_2a
    move v2, v3

    .line 1050
    goto :goto_8

    .line 1048
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2a
        :pswitch_8
    .end packed-switch
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 819
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 822
    :goto_6
    return v1

    .line 820
    :catch_7
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isUnlocked()Z
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 431
    :goto_6
    return-object v1

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public lock()Z
    .registers 2

    .prologue
    .line 464
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 459
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 456
    goto :goto_a

    .line 457
    :catch_d
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 459
    goto :goto_a
.end method

.method public migrateMDFPPKeystore(ILjava/lang/String;Z)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isFingerprint"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1029
    :try_start_2
    iget-object v4, p0, mBinder:Landroid/security/IKeystoreService;

    if-eqz p3, :cond_e

    move v3, v1

    :goto_7
    invoke-interface {v4, p2, p1, v3}, Landroid/security/IKeystoreService;->migrate_MDFPP_keystore(Ljava/lang/String;II)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_12

    move-result v3

    if-ne v3, v1, :cond_10

    :goto_d
    return v1

    :cond_e
    move v3, v2

    goto :goto_7

    :cond_10
    move v1, v2

    goto :goto_d

    .line 1030
    :catch_12
    move-exception v0

    .line 1031
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1
.end method

.method public onUserAdded(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 884
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, onUserAdded(II)V

    .line 885
    return-void
.end method

.method public onUserAdded(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 872
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 876
    :goto_5
    return-void

    .line 873
    :catch_6
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onUserAddedMDFPP(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 1067
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded_MDFPP(II)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1071
    :goto_5
    return-void

    .line 1068
    :catch_6
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    if-nez p2, :cond_6

    .line 852
    const-string p2, ""

    .line 855
    :cond_6
    :try_start_6
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_11

    move-result v3

    if-ne v3, v1, :cond_f

    .line 858
    :goto_e
    return v1

    :cond_f
    move v1, v2

    .line 855
    goto :goto_e

    .line 856
    :catch_11
    move-exception v0

    .line 857
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 858
    goto :goto_e
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .registers 3
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 898
    :goto_5
    return-void

    .line 895
    :catch_6
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public put(Ljava/lang/String;[BII)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, p1, p2, p3, p4}, insert(Ljava/lang/String;[BII)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public reset()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 444
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 441
    goto :goto_a

    .line 442
    :catch_d
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 444
    goto :goto_a
.end method

.method public resetMDFPP(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1058
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->reset_MDFPP(I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 1061
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 1058
    goto :goto_a

    .line 1059
    :catch_d
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 1061
    goto :goto_a
.end method

.method public sign(Ljava/lang/String;[B)[B
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 577
    :goto_6
    return-object v1

    .line 575
    :catch_7
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public state()Landroid/security/KeyStore$State;
    .registers 2

    .prologue
    .line 243
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 228
    :try_start_0
    iget-object v2, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->getState(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_11

    move-result v1

    .line 234
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_28

    .line 238
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 229
    .end local v1    # "ret":I
    :catch_11
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_1f
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    .line 237
    :goto_21
    return-object v2

    .line 236
    :pswitch_22
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 237
    :pswitch_25
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_21

    .line 234
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 604
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 601
    goto :goto_a

    .line 602
    :catch_d
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 604
    goto :goto_a
.end method

.method public unlock(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 480
    :try_start_2
    iget-object v4, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, mError:I

    .line 481
    iget v4, p0, mError:I

    if-ne v4, v2, :cond_21

    move v1, v2

    .line 484
    .local v1, "ret":Z
    :goto_f
    if-eqz v1, :cond_1c

    .line 485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, refreshRollbackUserKeystore(I)V

    .line 489
    :cond_1c
    iget v4, p0, mError:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_25

    if-ne v4, v2, :cond_23

    .line 492
    .end local v1    # "ret":Z
    :goto_20
    return v2

    :cond_21
    move v1, v3

    .line 481
    goto :goto_f

    .restart local v1    # "ret":Z
    :cond_23
    move v2, v3

    .line 489
    goto :goto_20

    .line 490
    .end local v1    # "ret":Z
    :catch_25
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 492
    goto :goto_20
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B

    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 784
    :goto_6
    return-object v1

    .line 782
    :catch_7
    move-exception v0

    .line 783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 583
    :try_start_2
    iget-object v3, p0, mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_d

    move-result v3

    if-ne v3, v1, :cond_b

    .line 586
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 583
    goto :goto_a

    .line 584
    :catch_d
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 586
    goto :goto_a
.end method
