.class public Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
    }
.end annotation


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;

.field static mIsCanceled:Z

.field private static final permissions:[Ljava/lang/String;


# instance fields
.field action:I

.field currentOS:I

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mSource:Ljava/lang/String;

.field final maxClient:I

.field private salt:[B

.field final support5G:Z

.field final timeout:I

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    .line 163
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v0, Landroid/net/wifi/WifiApCust;->mSupport5G:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    .line 164
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->maxClient:I

    .line 165
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->timeout:I

    .line 191
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 95
    sput-object p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;
    .param p1, "x1"    # [B

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic access$300()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$302(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/Cipher;

    .prologue
    .line 95
    sput-object p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 977
    const-string v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 980
    .local v9, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 981
    .local v2, "backupConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 985
    const-string v12, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v2, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "backupJSON":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 987
    const/4 v10, 0x0

    .line 989
    .local v10, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v11, Ljava/io/FileWriter;

    new-instance v12, Ljava/io/File;

    const-string v13, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    .end local v10    # "writer":Ljava/io/FileWriter;
    .local v11, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v12, "WifiApBackupRestore"

    const-string v13, "Writing the JSON"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v11, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 996
    if-eqz v11, :cond_0

    .line 997
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1005
    .end local v11    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    const-string v12, "/data/misc/wifi_hostapd/backup.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    .line 1006
    .local v6, "confSize":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_3

    .line 1007
    const-string v12, "WifiApBackupRestore"

    const-string v13, "Backup failed!, There is no conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 1030
    :cond_1
    :goto_1
    return-void

    .line 998
    .end local v6    # "confSize":J
    .restart local v11    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    .line 999
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 992
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v5

    .line 993
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v12, "WifiApBackupRestore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileWriter exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 996
    if-eqz v10, :cond_0

    .line 997
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 998
    :catch_2
    move-exception v5

    .line 999
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 995
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 996
    :goto_3
    if-eqz v10, :cond_2

    .line 997
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1000
    :cond_2
    :goto_4
    throw v12

    .line 998
    :catch_3
    move-exception v5

    .line 999
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1012
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "confSize":J
    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v12, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v3, "backupFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 1015
    :try_start_6
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1016
    .local v8, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v13, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v12, v14, v15, v8, v13}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1027
    const-string v12, "WifiApBackupRestore"

    const-string v13, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_1

    .line 1022
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    .line 1023
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v12, "WifiApBackupRestore"

    const-string v13, "err"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_1

    .line 995
    .end local v3    # "backupFile":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "confSize":J
    .restart local v11    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    goto :goto_3

    .line 992
    .end local v10    # "writer":Ljava/io/FileWriter;
    .restart local v11    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v5

    move-object v10, v11

    .end local v11    # "writer":Ljava/io/FileWriter;
    .restart local v10    # "writer":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "dummyConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 900
    const/4 v5, 0x0

    .line 901
    .local v5, "in":Ljava/io/DataInputStream;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 903
    .local v11, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 904
    .end local v5    # "in":Ljava/io/DataInputStream;
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 905
    .local v12, "version":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 906
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v15

    move-object/from16 v0, p2

    iput-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 907
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 908
    move-object/from16 v0, p2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 909
    .local v3, "channel":I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 910
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 911
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 912
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 913
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 914
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-object/from16 v0, p2

    iput v15, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 915
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 916
    .local v2, "authType":I
    if-eqz v2, :cond_0

    .line 917
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    iput-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 919
    :cond_0
    const-string v15, "version"

    invoke-virtual {v11, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 920
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 921
    .local v10, "jsonMHS":Lorg/json/JSONObject;
    const-string v15, "SSID"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 922
    move-object/from16 v0, p2

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v15, :cond_3

    .line 923
    const-string v15, "hidden"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 926
    :goto_0
    if-nez v2, :cond_4

    .line 927
    const-string v15, "use_security"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 928
    const-string v15, "passphrase"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    :goto_1
    move-object/from16 v0, p2

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eqz v15, :cond_1

    .line 934
    move-object/from16 v0, p2

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 935
    const-string v15, "band"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 939
    :cond_1
    :goto_2
    const-string v15, "channel"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 940
    const-string v15, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 941
    const-string v15, "allow"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 942
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v13

    .line 943
    .local v13, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v13}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 944
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v7, :cond_8

    .line 945
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 946
    .local v8, "jarr":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 947
    .local v9, "jarr2":Lorg/json/JSONArray;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 948
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 949
    .local v14, "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v14}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 950
    invoke-virtual {v14}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 956
    .end local v2    # "authType":I
    .end local v3    # "channel":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v8    # "jarr":Lorg/json/JSONArray;
    .end local v9    # "jarr2":Lorg/json/JSONArray;
    .end local v10    # "jsonMHS":Lorg/json/JSONObject;
    .end local v12    # "version":I
    .end local v13    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .end local v14    # "wl":Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 957
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Lorg/json/JSONException;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_4
    :try_start_2
    const-string v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "JSONException enountered.."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 958
    const/4 v15, 0x0

    .line 963
    if-eqz v5, :cond_2

    .line 965
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 971
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_5
    return-object v15

    .line 925
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "authType":I
    .restart local v3    # "channel":I
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v12    # "version":I
    :cond_3
    :try_start_4
    const-string v15, "hidden"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 959
    .end local v2    # "authType":I
    .end local v3    # "channel":I
    .end local v10    # "jsonMHS":Lorg/json/JSONObject;
    .end local v12    # "version":I
    :catch_1
    move-exception v4

    move-object v5, v6

    .line 960
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_6
    :try_start_5
    const-string v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "READ loadApConfigurationOldVer() : IOException"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 961
    const/4 v15, 0x0

    .line 963
    if-eqz v5, :cond_2

    .line 965
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 966
    :catch_2
    move-exception v4

    .line 967
    const-string v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 930
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "authType":I
    .restart local v3    # "channel":I
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v12    # "version":I
    :cond_4
    :try_start_7
    const-string v15, "use_security"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 931
    const-string v15, "passphrase"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 963
    .end local v2    # "authType":I
    .end local v3    # "channel":I
    .end local v10    # "jsonMHS":Lorg/json/JSONObject;
    .end local v12    # "version":I
    :catchall_0
    move-exception v15

    move-object v5, v6

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :goto_7
    if-eqz v5, :cond_5

    .line 965
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 968
    :cond_5
    :goto_8
    throw v15

    .line 937
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "authType":I
    .restart local v3    # "channel":I
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v10    # "jsonMHS":Lorg/json/JSONObject;
    .restart local v12    # "version":I
    :cond_6
    :try_start_9
    const-string v15, "band"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 952
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .restart local v8    # "jarr":Lorg/json/JSONArray;
    .restart local v9    # "jarr2":Lorg/json/JSONArray;
    .restart local v13    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_7
    const-string v15, "allowed_devices_name"

    invoke-virtual {v10, v15, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    const-string v15, "allowed_devices"

    invoke-virtual {v10, v15, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 955
    .end local v8    # "jarr":Lorg/json/JSONArray;
    .end local v9    # "jarr2":Lorg/json/JSONArray;
    :cond_8
    const-string v15, "hotspot"

    invoke-virtual {v11, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 963
    if-eqz v6, :cond_9

    .line 965
    :try_start_a
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 971
    :cond_9
    :goto_9
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v5, v6

    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_5

    .line 966
    .end local v5    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v4

    .line 967
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 966
    .end local v2    # "authType":I
    .end local v3    # "channel":I
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v10    # "jsonMHS":Lorg/json/JSONObject;
    .end local v12    # "version":I
    .end local v13    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    .local v4, "e":Lorg/json/JSONException;
    .restart local v5    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    .line 967
    .local v4, "e":Ljava/io/IOException;
    const-string v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 966
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 967
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 963
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    goto/16 :goto_7

    .line 959
    :catch_6
    move-exception v4

    goto/16 :goto_6

    .line 956
    :catch_7
    move-exception v4

    goto/16 :goto_4
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 874
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutValueFromPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 860
    const-string v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 886
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 881
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "receivedaction":Ljava/lang/String;
    const-string v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    .line 170
    const-string v2, "ACTION"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    .line 172
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 173
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    sput-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    .line 178
    const-string v2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const-string v2, "WifiApBackupRestore"

    const-string v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    .local v0, "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 183
    .end local v0    # "kiesThread":Ljava/lang/Thread;
    :cond_2
    const-string v2, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "WifiApBackupRestore"

    const-string v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    .restart local v0    # "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1033
    const/4 v5, 0x0

    .line 1034
    .local v5, "temp":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1036
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    .end local v5    # "temp":Ljava/io/InputStream;
    .local v6, "temp":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1038
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1039
    .local v1, "line":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1040
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .line 1044
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "temp":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "temp":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readJSON exception.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1051
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1058
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v3, :cond_1

    .line 1059
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1061
    :goto_3
    return-object v7

    .line 1051
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :cond_0
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v3, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .line 1055
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_2

    .line 1052
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on closing.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .line 1056
    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_2

    .line 1052
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on closing.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1046
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1047
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readJSON IOEx.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1051
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1052
    :catch_4
    move-exception v0

    .line 1053
    const-string v7, "WifiApBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception on closing.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1050
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1051
    :goto_5
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1055
    :goto_6
    throw v7

    .line 1052
    :catch_5
    move-exception v0

    .line 1053
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "WifiApBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception on closing.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1061
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1050
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_5

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_5

    .line 1046
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_4

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    move-object v5, v6

    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto :goto_4

    .line 1043
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    goto/16 :goto_1

    .end local v5    # "temp":Ljava/io/InputStream;
    .restart local v6    # "temp":Ljava/io/InputStream;
    :catch_9
    move-exception v0

    move-object v5, v6

    .end local v6    # "temp":Ljava/io/InputStream;
    .restart local v5    # "temp":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 1067
    const-string v25, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 1069
    .local v13, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v22, Ljava/io/File;

    const-string v25, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v22, "target":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1073
    .local v10, "fos":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v26

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    new-instance v28, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-static {v10, v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 1090
    const-string v25, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1091
    .local v20, "restoreJSON":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1094
    .local v21, "restoreStatus":Z
    if-eqz v20, :cond_2

    .line 1096
    :try_start_1
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v18, "obj":Lorg/json/JSONObject;
    new-instance v17, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1098
    .local v17, "newconfig":Landroid/net/wifi/WifiConfiguration;
    const-string v25, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1099
    .local v23, "version":I
    const-string v25, "hotspot"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1100
    .local v15, "mhsobj":Lorg/json/JSONObject;
    const-string v25, "SSID"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1101
    const-string v25, "hidden"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1102
    .local v11, "hiddenSSID":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_1

    .line 1103
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1106
    :goto_0
    const-string v25, "channel"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1107
    .local v6, "channel":I
    move-object/from16 v0, v17

    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 1108
    const-string v25, "allow"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1109
    .local v4, "allow":I
    move-object/from16 v0, v17

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 1110
    const-string v25, "use_security"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1111
    .local v5, "authType":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_3

    .line 1112
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Ljava/util/BitSet;->set(I)V

    .line 1116
    :goto_1
    if-eqz v5, :cond_0

    .line 1117
    const-string v25, "passphrase"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1118
    .local v19, "pw":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1120
    .end local v19    # "pw":Ljava/lang/String;
    :cond_0
    const-string v25, "timeout"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V

    .line 1121
    const-string v25, "allowed_devices_name"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1122
    const-string v25, "allowed_devices_name"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 1123
    .local v16, "name":Lorg/json/JSONArray;
    const-string v25, "allowed_devices"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1124
    .local v14, "mac":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .line 1125
    .local v8, "dname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1126
    .local v7, "dmac":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v24

    .line 1127
    .local v24, "whiteList":Landroid/net/wifi/WifiApWhiteList;
    if-eqz v16, :cond_5

    .line 1128
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_5

    .line 1129
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1130
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1131
    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1132
    const-string v25, "WifiApBackupRestore"

    const-string v26, "Whitelist MAC invalid. QUIT!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1133
    const/16 v21, 0x0

    .line 1149
    .end local v4    # "allow":I
    .end local v5    # "authType":I
    .end local v6    # "channel":I
    .end local v7    # "dmac":Ljava/lang/String;
    .end local v8    # "dname":Ljava/lang/String;
    .end local v11    # "hiddenSSID":I
    .end local v12    # "i":I
    .end local v14    # "mac":Lorg/json/JSONArray;
    .end local v15    # "mhsobj":Lorg/json/JSONObject;
    .end local v16    # "name":Lorg/json/JSONArray;
    .end local v17    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "obj":Lorg/json/JSONObject;
    .end local v20    # "restoreJSON":Ljava/lang/String;
    .end local v21    # "restoreStatus":Z
    .end local v23    # "version":I
    .end local v24    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :goto_3
    return-void

    .line 1079
    :catch_0
    move-exception v9

    .line 1080
    .local v9, "e":Ljava/io/IOException;
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_3

    .line 1105
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "hiddenSSID":I
    .restart local v15    # "mhsobj":Lorg/json/JSONObject;
    .restart local v17    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v18    # "obj":Lorg/json/JSONObject;
    .restart local v20    # "restoreJSON":Ljava/lang/String;
    .restart local v21    # "restoreStatus":Z
    .restart local v23    # "version":I
    :cond_1
    const/16 v25, 0x0

    :try_start_2
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1140
    .end local v11    # "hiddenSSID":I
    .end local v15    # "mhsobj":Lorg/json/JSONObject;
    .end local v17    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "obj":Lorg/json/JSONObject;
    .end local v23    # "version":I
    :catch_1
    move-exception v9

    .line 1141
    .local v9, "e":Lorg/json/JSONException;
    const-string v25, "WifiApBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "JSON EXCEeption enountered.."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_4
    if-nez v21, :cond_6

    .line 1146
    const-string v25, "WifiApBackupRestore"

    const-string v26, "SCLOUD RESTORE Fail!!.."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1114
    .restart local v4    # "allow":I
    .restart local v5    # "authType":I
    .restart local v6    # "channel":I
    .restart local v11    # "hiddenSSID":I
    .restart local v15    # "mhsobj":Lorg/json/JSONObject;
    .restart local v17    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v18    # "obj":Lorg/json/JSONObject;
    .restart local v23    # "version":I
    :cond_3
    :try_start_3
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 1128
    .restart local v7    # "dmac":Ljava/lang/String;
    .restart local v8    # "dname":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "mac":Lorg/json/JSONArray;
    .restart local v16    # "name":Lorg/json/JSONArray;
    .restart local v24    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1139
    .end local v7    # "dmac":Ljava/lang/String;
    .end local v8    # "dname":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "mac":Lorg/json/JSONArray;
    .end local v16    # "name":Lorg/json/JSONArray;
    .end local v24    # "whiteList":Landroid/net/wifi/WifiApWhiteList;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v21

    goto :goto_4

    .line 1148
    .end local v4    # "allow":I
    .end local v5    # "authType":I
    .end local v6    # "channel":I
    .end local v11    # "hiddenSSID":I
    .end local v15    # "mhsobj":Lorg/json/JSONObject;
    .end local v17    # "newconfig":Landroid/net/wifi/WifiConfiguration;
    .end local v18    # "obj":Lorg/json/JSONObject;
    .end local v23    # "version":I
    :cond_6
    const-string v25, "WifiApBackupRestore"

    const-string v26, "restore - complete!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setTimeout(ILandroid/content/Context;)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 866
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 868
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 869
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 870
    return-void
.end method
