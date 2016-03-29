.class public Lcom/android/settings/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field static mIsCanceled:Z

.field private static final mPermissions:[Ljava/lang/String;


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field mExportSessionTime:Ljava/lang/String;

.field mOption:I

.field mSecurityLevel:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/Cipher;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;
    .param p1, "x1"    # Ljavax/crypto/Cipher;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiBackupRestore;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiBackupRestore;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;
    .param p1, "x1"    # [B

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiBackupRestore;
    .param p1, "x1"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/wifi/WifiBackupRestore;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    return-object p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 719
    const-string v12, "WifiBackupRestore"

    const-string v13, "backup "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v12, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 723
    .local v11, "wm":Landroid/net/wifi/WifiManager;
    const-string v12, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/WifiBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    .line 724
    .local v4, "confSize":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    .line 725
    const-string v12, "WifiBackupRestore"

    const-string v13, "There is no conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 782
    :goto_0
    return-void

    .line 731
    :cond_0
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 732
    .local v10, "msg":Landroid/os/Message;
    const/16 v12, 0x3d

    iput v12, v10, Landroid/os/Message;->what:I

    .line 734
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v2, "args":Landroid/os/Bundle;
    const-string v12, "OPTION"

    const/4 v13, 0x2

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    const-string v12, "PATH"

    const-string v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iput-object v2, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_1

    .line 740
    const-string v12, "WifiBackupRestore"

    const-string v13, "Cloud BACK UP !!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v3, Ljava/io/File;

    const-string v12, "/data/misc/wifi/temp.conf"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 749
    .local v3, "backupFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 751
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 752
    .local v9, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v13, Lcom/android/settings/wifi/WifiBackupRestore$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/android/settings/wifi/WifiBackupRestore$1;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v12, v14, v15, v9, v13}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    const-string v12, "WifiBackupRestore"

    const-string v13, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 771
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 772
    .local v7, "deleteMsg":Landroid/os/Message;
    const/16 v12, 0x104

    iput v12, v7, Landroid/os/Message;->what:I

    .line 773
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 774
    .local v6, "deleteArgs":Landroid/os/Bundle;
    const-string v12, "PATH"

    const-string v13, "/data/misc/wifi/temp.conf"

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 777
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v12

    if-nez v12, :cond_3

    .line 778
    const-string v12, "WifiBackupRestore"

    const-string v13, "Delete temp.conf file successful."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    .end local v3    # "backupFile":Ljava/io/File;
    .end local v6    # "deleteArgs":Landroid/os/Bundle;
    .end local v7    # "deleteMsg":Landroid/os/Message;
    :cond_1
    const-string v12, "WifiBackupRestore"

    const-string v13, "Failed to write networks"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto/16 :goto_0

    .line 758
    .restart local v3    # "backupFile":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 759
    .local v8, "e":Ljava/io/IOException;
    const-string v12, "WifiBackupRestore"

    const-string v13, "err"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto/16 :goto_0

    .line 766
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    const-string v12, "WifiBackupRestore"

    const-string v13, "There are no networks to write"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_1

    .line 780
    .restart local v6    # "deleteArgs":Landroid/os/Bundle;
    .restart local v7    # "deleteMsg":Landroid/os/Message;
    :cond_3
    const-string v12, "WifiBackupRestore"

    const-string v13, "Failed to delete temp.conf file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 713
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 692
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 705
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v7, "SOURCE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "source":Ljava/lang/String;
    const-string v7, "ACTION"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "extraAction":I
    const/4 v2, 0x0

    .line 147
    .local v2, "isIgnoreSupportFeature":Z
    if-eqz v4, :cond_0

    .line 148
    const-string v7, "GearHostManager"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 151
    :cond_0
    :goto_0
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 152
    sput-boolean v5, Lcom/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    .line 171
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v6

    .line 148
    goto :goto_0

    .line 155
    :cond_3
    sput-boolean v6, Lcom/android/settings/wifi/WifiBackupRestore;->mIsCanceled:Z

    .line 158
    const-string v5, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 159
    const-string v5, "WifiBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request backup - isIgnoreSupportFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    .local v3, "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 164
    .end local v3    # "kiesThread":Ljava/lang/Thread;
    :cond_4
    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    const-string v5, "WifiBackupRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request restore - isIgnoreSupportFeature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    .restart local v3    # "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "listener"    # Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;

    .prologue
    .line 787
    const-string v11, "WifiBackupRestore"

    const-string v12, "restore "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v9, Ljava/io/File;

    const-string v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 790
    .local v9, "target":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 793
    .local v7, "fos":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/android/settings/wifi/WifiBackupRestore$2;

    move-object/from16 v0, p3

    invoke-direct {v14, p0, v0}, Lcom/android/settings/wifi/WifiBackupRestore$2;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v7, v12, v13, v11, v14}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    const-string v11, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 807
    .local v10, "wm":Landroid/net/wifi/WifiManager;
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    .line 808
    const-string v11, "WifiBackupRestore"

    const-string v12, "restore - complete! "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v6, Ljava/io/File;

    const-string v11, "/data/misc/wifi_share_profile/temp.conf"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 812
    .local v6, "f":Ljava/io/File;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 813
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 814
    .local v8, "msg":Landroid/os/Message;
    const/16 v11, 0x3d

    iput v11, v8, Landroid/os/Message;->what:I

    .line 816
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 817
    .local v2, "args":Landroid/os/Bundle;
    const-string v11, "OPTION"

    const/4 v12, 0x3

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 818
    const-string v11, "PATH"

    const-string v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 821
    invoke-virtual {v10, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_0

    .line 822
    const-string v11, "WifiBackupRestore"

    const-string v12, "RESTORE - success"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 831
    .local v4, "deleteMsg":Landroid/os/Message;
    const/16 v11, 0x104

    iput v11, v4, Landroid/os/Message;->what:I

    .line 832
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 833
    .local v3, "deleteArgs":Landroid/os/Bundle;
    const-string v11, "PATH"

    const-string v12, "/data/misc/wifi_share_profile/temp.conf"

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 836
    invoke-virtual {v10, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-nez v11, :cond_1

    .line 837
    const-string v11, "WifiBackupRestore"

    const-string v12, "Delete temp.conf file successful."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "deleteArgs":Landroid/os/Bundle;
    .end local v4    # "deleteMsg":Landroid/os/Message;
    .end local v6    # "f":Ljava/io/File;
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v5

    .line 801
    .local v5, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0

    .line 824
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "args":Landroid/os/Bundle;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v8    # "msg":Landroid/os/Message;
    .restart local v10    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v11, "WifiBackupRestore"

    const-string v12, "Failed to read networks"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    goto :goto_0

    .line 839
    .restart local v3    # "deleteArgs":Landroid/os/Bundle;
    .restart local v4    # "deleteMsg":Landroid/os/Message;
    :cond_1
    const-string v11, "WifiBackupRestore"

    const-string v12, "Failed to delete temp.conf file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
