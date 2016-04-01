.class Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;
    }
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 3

    .prologue
    .line 1149
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 1215
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p2, "x1"    # Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .prologue
    .line 1149
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .registers 3

    .prologue
    .line 1154
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDaemonConnected - connected to netd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnected:Z

    .line 1156
    return-void
.end method

.method public onDaemonDisconnected()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1160
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onDaemonDisconnected - disconnected from netd"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-boolean v1, p0, mConnected:Z

    if-eqz v1, :cond_26

    .line 1164
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1165
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;

    invoke-direct {v1, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver$ScheduleReInitializationOfDaemonCache;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1166
    const/4 v1, 0x0

    iput-boolean v1, p0, mConnected:Z

    .line 1167
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # setter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$802(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1169
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_26
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 21
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 1173
    packed-switch p1, :pswitch_data_b4

    .line 1210
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid code "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :goto_1f
    const/4 v13, 0x1

    return v13

    .line 1175
    :pswitch_21
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x7

    if-ne v13, v14, :cond_a7

    .line 1179
    const/4 v13, 0x3

    :try_start_28
    aget-object v13, p3, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2d} :catch_97

    move-result v11

    .line 1184
    .local v11, "uid":I
    :goto_2e
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1185
    .local v12, "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "android"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15, v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 1186
    .local v2, "ctx":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1187
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 1188
    .local v7, "packages":[Ljava/lang/String;
    const/4 v13, 0x5

    aget-object v6, p3, v13

    .line 1189
    .local v6, "packageName":Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4f
    if-ge v4, v5, :cond_83

    aget-object v9, v1, v4

    .line 1191
    .local v9, "pkg":Ljava/lang/String;
    const/16 v13, 0x80

    :try_start_55
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1193
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x5

    aget-object v13, p3, v13

    if-eqz v13, :cond_a4

    const/4 v13, 0x5

    aget-object v13, p3, v13

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_82

    const/4 v13, 0x5

    aget-object v13, p3, v13

    const/4 v14, 0x0

    const/4 v15, 0x5

    aget-object v15, p3, v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_7f} :catch_a3

    move-result v13

    if-eqz v13, :cond_a4

    .line 1197
    :cond_82
    move-object v6, v9

    .line 1204
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_83
    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    const/4 v14, 0x2

    aget-object v14, p3, v14

    const/4 v15, 0x3

    aget-object v15, p3, v15

    const/16 v16, 0x4

    aget-object v16, p3, v16

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14, v15, v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 1180
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "uid":I
    .end local v12    # "userId":I
    :catch_97
    move-exception v3

    .line 1181
    .local v3, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Error parsing String to int"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/4 v11, 0x0

    .restart local v11    # "uid":I
    goto :goto_2e

    .line 1200
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "ctx":Landroid/content/Context;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "userId":I
    :catch_a3
    move-exception v3

    .line 1189
    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 1206
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "uid":I
    .end local v12    # "userId":I
    :cond_a7
    # getter for: Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "invalid number of arguments "

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1173
    nop

    :pswitch_data_b4
    .packed-switch 0x320
        :pswitch_21
    .end packed-switch
.end method
