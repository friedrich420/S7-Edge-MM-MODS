.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field public static final OP_REPORT:Ljava/lang/String; = "REPORT"

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    const-string v0, "DomainFilter"

    sput-object v0, TAG:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, CMD_BUF_SIZE_ARGS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUserIdMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mUserIdMapLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 119
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v3, "filterPkg":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 127
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v8, "filterUser":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget-object v6, p0, mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    iput-object v0, p0, mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    .line 137
    invoke-direct {p0}, initUserIdMap()V

    .line 138
    invoke-direct {p0}, initDaemonCache()V

    .line 139
    invoke-direct {p0}, initReportCache()V

    .line 140
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    invoke-direct {p0}, initDaemonCache()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 48
    iput-object p1, p0, mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    .line 48
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAdminInDatabase(I)I
    .registers 8
    .param p1, "adminUid"    # I

    .prologue
    const/4 v2, 0x0

    .line 975
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 976
    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const-string v5, "adminUid"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 988
    :goto_1a
    return v2

    .line 983
    :cond_1b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_29

    .line 985
    const/4 v2, 0x1

    goto :goto_1a

    .line 988
    :cond_29
    const/4 v2, -0x1

    goto :goto_1a
.end method

.method private clearReportForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1142
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 1144
    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p2, "headerSize"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .param p4, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 910
    .local p1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    .line 911
    .local v0, "argSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .local v2, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 913
    .local v3, "listValuesSize":I
    if-eqz p4, :cond_16

    .line 914
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v3, v8

    .line 916
    :cond_16
    if-eqz p4, :cond_1f

    add-int v8, p2, v3

    add-int/2addr v8, v0

    sget v9, CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_2c

    .line 917
    :cond_1f
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 918
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-direct {p0, v2}, executeCommand(Ljava/util/ArrayList;)V

    .line 948
    :cond_2b
    return-void

    .line 922
    :cond_2c
    const-string v8, ";"

    invoke-virtual {p4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 923
    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 924
    .local v1, "counter":I
    :goto_37
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2b

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    .local v4, "newList":Ljava/lang/StringBuilder;
    add-int v6, p2, v0

    .line 927
    .local v6, "totalTemp":I
    :goto_44
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_8d

    .line 928
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .line 929
    .local v7, "valueSize":I
    add-int v8, v6, v7

    sget v9, CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_8d

    .line 930
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_70

    .line 931
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :goto_6c
    add-int/lit8 v1, v1, 0x1

    .line 936
    add-int/2addr v6, v7

    .line 940
    goto :goto_44

    .line 933
    :cond_70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 941
    .end local v7    # "valueSize":I
    :cond_8d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 942
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    invoke-direct {p0, v2}, executeCommand(Ljava/util/ArrayList;)V

    .line 945
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_37
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1034
    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1035
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1037
    :cond_18
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1025
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1026
    :cond_8
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    :goto_e
    return-object v0

    .line 1028
    :cond_f
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1029
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private executeCommand(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, mThread:Ljava/lang/Thread;

    if-nez v2, :cond_17

    .line 953
    :try_start_4
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, mThread:Ljava/lang/Thread;

    .line 954
    iget-object v2, p0, mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_4 .. :try_end_12} :catch_2f

    .line 956
    const-wide/16 v2, 0x1f4

    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_25
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_14 .. :try_end_17} :catch_2f

    .line 967
    :cond_17
    :goto_17
    :try_start_17
    iget-object v2, p0, mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string/jumbo v3, "domainFilterCmd"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 968
    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_38

    .line 972
    :goto_24
    return-void

    .line 957
    :catch_25
    move-exception v0

    .line 958
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_26
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to wait for socket creation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_17

    .line 960
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_2f
    move-exception v1

    .line 961
    .local v1, "illex":Ljava/lang/IllegalThreadStateException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Thread already started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 969
    .end local v1    # "illex":Ljava/lang/IllegalThreadStateException;
    :catch_38
    move-exception v0

    .line 970
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to send command to daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 217
    .local v2, "token":J
    const/4 v1, 0x0

    .line 219
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_5
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_1c
    .catchall {:try_start_5 .. :try_end_10} :catchall_3a

    move-result-object v1

    .line 224
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    :goto_14
    if-eqz v1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_3f

    .line 228
    :cond_1a
    const/4 v4, -0x1

    .line 229
    :goto_1b
    return v4

    .line 221
    :catch_1c
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1d
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception getting package info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_3a

    .line 224
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 229
    :cond_3f
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1b
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "selectionValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "listInDB":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 209
    const-string v0, ""

    .line 211
    :cond_10
    return-object v0
.end method

.method private initDaemonCache()V
    .registers 19

    .prologue
    .line 821
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 822
    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string v3, "adminUid"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 825
    .local v9, "admins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_bd

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_bd

    .line 826
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 827
    .local v8, "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_23
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 828
    .local v7, "admin":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 829
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, mUserIdMap:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 830
    .local v10, "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "adminUid"

    invoke-virtual {v15, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v2, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v14

    .line 834
    .local v14, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 835
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "blacklist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 838
    .local v5, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v1, "whitelist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 840
    .local v6, "whiteListInDB":Ljava/lang/String;
    const/16 v16, 0x0

    .line 841
    .local v16, "uid":Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 842
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 846
    :cond_94
    :goto_94
    if-eqz v16, :cond_5b

    if-nez v5, :cond_9a

    if-eqz v6, :cond_5b

    .line 847
    :cond_9a
    const-string v2, "ADD"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 843
    :cond_a7
    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 844
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_94

    .line 851
    .end local v5    # "blackListInDB":Ljava/lang/String;
    .end local v6    # "whiteListInDB":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "uid":Ljava/lang/String;
    :cond_b8
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_23

    .line 854
    .end local v7    # "admin":Ljava/lang/Integer;
    .end local v8    # "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "userId":I
    :cond_bd
    return-void
.end method

.method private initReportCache()V
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 857
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mDomainReportCache:Ljava/util/Set;

    .line 858
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v9, "reportEnabled":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 862
    .local v7, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_28

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 863
    :cond_28
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "initReportCache - No admin found in report status table"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_30
    :goto_30
    return-void

    .line 866
    :cond_31
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 867
    .local v6, "admin":Landroid/content/ContentValues;
    const-string/jumbo v0, "userId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 868
    .local v10, "userId":I
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 870
    .end local v6    # "admin":Landroid/content/ContentValues;
    .end local v10    # "userId":I
    :cond_57
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 871
    const-string v1, "REPORT"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method private initUserIdMap()V
    .registers 15

    .prologue
    .line 143
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 144
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 146
    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v8, :cond_68

    .line 147
    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 148
    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v9, :cond_68

    .line 149
    iget-object v11, p0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v11

    .line 150
    :try_start_1c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 151
    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v10, 0x80

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .line 154
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 155
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 156
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 160
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catchall_58
    move-exception v10

    monitor-exit v11
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_58

    throw v10

    .line 158
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_5b
    :try_start_5b
    iget-object v10, p0, mUserIdMap:Ljava/util/Map;

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 160
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_67
    monitor-exit v11
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_58

    .line 163
    .end local v9    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_68
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 1077
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v2, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportStatus"

    const-string/jumbo v4, "status"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .line 1082
    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_22

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1083
    :cond_22
    const/4 v2, 0x0

    .line 1085
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_23
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 169
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 170
    .local v5, "userId":I
    if-eq v5, v7, :cond_5b

    .line 171
    iget-object v7, p0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7

    .line 172
    :try_start_c
    iget-object v6, p0, mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 173
    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_5a

    .line 174
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 176
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .line 178
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 179
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    .line 184
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_4d
    move-exception v6

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_4d

    throw v6

    .line 182
    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_50
    :try_start_50
    iget-object v6, p0, mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_5a
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_4d

    .line 186
    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5b
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 192
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 193
    .local v6, "userId":I
    if-eq v6, v1, :cond_31

    .line 194
    iget-object v8, p0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 195
    :try_start_c
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 196
    .local v7, "userIdObj":Ljava/lang/Integer;
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 198
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "CLEAR"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_30
    monitor-exit v8

    .line 203
    .end local v7    # "userIdObj":Ljava/lang/Integer;
    :cond_31
    return-void

    .line 201
    :catchall_32
    move-exception v0

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_32

    throw v0
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "pkgAdded":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 239
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_18

    if-nez v14, :cond_20

    .line 240
    :cond_18
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1f
    :goto_1f
    return-void

    .line 244
    :cond_20
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, getApplicationUid(Ljava/lang/String;I)I

    move-result v18

    .line 245
    .local v18, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_35

    .line 246
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Failed to retrieve app info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 250
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 251
    :try_start_3a
    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 252
    .local v9, "objUserID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f6

    .line 253
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v13, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v13    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_10c

    .line 261
    const-string v6, ""

    .local v6, "blackListInDB":Ljava/lang/String;
    const-string v7, ""

    .line 262
    .local v7, "whiteListInDB":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "#SelectClause#"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .line 268
    .local v12, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_1f

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 269
    const-string/jumbo v2, "packageName"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string/jumbo v4, "signature"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, "signature":Ljava/lang/String;
    const/16 v17, 0x0

    .line 273
    .local v17, "signatureMatch":Z
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .line 277
    .local v8, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 279
    .local v10, "identity":J
    :try_start_c0
    move-object/from16 v0, v16

    invoke-static {v8, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_10f

    move-result v17

    .line 282
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    if-eqz v17, :cond_1f

    .line 288
    .end local v8    # "ctx":Landroid/content/Context;
    .end local v10    # "identity":J
    :cond_cb
    const-string v2, "blacklist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    const-string/jumbo v2, "whitelist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 291
    :cond_e8
    const-string v3, "ADD"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 257
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "whiteListInDB":Ljava/lang/String;
    .end local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureMatch":Z
    :cond_f6
    :try_start_f6
    move-object/from16 v0, p0

    iget-object v2, v0, mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_61

    .line 259
    .end local v9    # "objUserID":Ljava/lang/Integer;
    :catchall_10c
    move-exception v2

    monitor-exit v3
    :try_end_10e
    .catchall {:try_start_f6 .. :try_end_10e} :catchall_10c

    throw v2

    .line 282
    .restart local v6    # "blackListInDB":Ljava/lang/String;
    .restart local v7    # "whiteListInDB":Ljava/lang/String;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "objUserID":Ljava/lang/Integer;
    .restart local v10    # "identity":J
    .restart local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "signatureMatch":Z
    :catchall_10f
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 302
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 303
    .local v11, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, "pkgRemoved":Ljava/lang/String;
    if-eq v11, v1, :cond_77

    if-eqz v8, :cond_77

    .line 305
    iget-object v12, p0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v12

    .line 306
    :try_start_16
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 307
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_76

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 309
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, "uid":Ljava/lang/String;
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .local v9, "selectionValues":Landroid/content/ContentValues;
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    invoke-static {v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "#SelectClause#"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 319
    .local v7, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_76

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 320
    const-string v1, "REMOVE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .end local v7    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "selectionValues":Landroid/content/ContentValues;
    .end local v10    # "uid":Ljava/lang/String;
    :cond_76
    monitor-exit v12

    .line 325
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_77
    return-void

    .line 323
    :catchall_78
    move-exception v0

    monitor-exit v12
    :try_end_7a
    .catchall {:try_start_16 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 332
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 333
    .local v10, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "pkgReplaced":Ljava/lang/String;
    if-eq v10, v3, :cond_14

    if-nez v9, :cond_1c

    .line 335
    :cond_14
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1b
    :goto_1b
    return-void

    .line 340
    :cond_1c
    iget-object v1, p0, mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_1f
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 342
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_33

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 344
    :cond_33
    invoke-direct {p0, p1}, packageAdded(Landroid/content/Intent;)V

    .line 345
    monitor-exit v1

    goto :goto_1b

    .line 356
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_38

    throw v0

    .line 348
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3b
    :try_start_3b
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 349
    .local v8, "oldUid":I
    invoke-direct {p0, v9, v10}, getApplicationUid(Ljava/lang/String;I)I

    move-result v7

    .line 350
    .local v7, "newUid":I
    if-ne v7, v3, :cond_54

    .line 351
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve app info"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v1

    goto :goto_1b

    .line 355
    :cond_54
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_38

    .line 357
    if-eq v8, v7, :cond_1b

    .line 358
    const-string v1, "REPLACE"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1117
    const/4 v2, -0x1

    .line 1119
    .local v2, "userId":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_8} :catch_51

    move-result v2

    .line 1123
    :goto_9
    const/4 v3, -0x1

    if-eq v2, v3, :cond_50

    iget-object v3, p0, mDomainReportCache:Ljava/util/Set;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 1125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v3, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterReportTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_50

    .line 1131
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "failed to save domain report in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_50
    return-void

    .line 1120
    :catch_51
    move-exception v1

    .line 1121
    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Error parsing userId received from daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 880
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_14
    const-string v2, "REPORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "CLEAR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "REPLACE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    if-nez p4, :cond_3c

    if-nez p5, :cond_3c

    .line 886
    :cond_38
    invoke-direct {p0, v1}, executeCommand(Ljava/util/ArrayList;)V

    .line 906
    :cond_3b
    :goto_3b
    return-void

    .line 890
    :cond_3c
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .line 891
    .local v0, "cmdHeaderSize":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 892
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 893
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    .line 896
    :cond_59
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_67
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 898
    :cond_6f
    const-string v2, "BLACKLIST"

    invoke-direct {p0, v1, v0, v2, p4}, concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_74
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    :cond_82
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 903
    :cond_8a
    const-string v2, "WHITELIST"

    invoke-direct {p0, v1, v0, v2, p5}, concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method private trimDomainUrls(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1016
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1017
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1019
    :cond_1d
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 1022
    :cond_23
    return-void
.end method

.method private updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    const/4 v3, 0x0

    .line 783
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 784
    .local v11, "userId":I
    const-string v0, "CLEAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 785
    const-string v1, "CLEAR"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_1b
    return-void

    .line 786
    :cond_1c
    if-eqz p2, :cond_1b

    const-string v0, "ADD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "REMOVE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 787
    :cond_2e
    iget-object v0, p0, mUserIdMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 788
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1b

    .line 789
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 790
    .local v10, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 791
    .local v9, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 792
    .local v2, "appId":Ljava/lang/String;
    const-string v0, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 793
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 797
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_8a

    .line 799
    const/4 v4, 0x0

    .local v4, "blackList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 800
    .local v5, "whiteList":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .line 801
    .local v7, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_73

    .line 802
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 803
    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 807
    :cond_73
    :goto_73
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v7

    .line 808
    if-eqz v7, :cond_85

    .line 809
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 810
    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :cond_85
    :goto_85
    move-object v0, p0

    move-object v1, p3

    .line 814
    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .end local v4    # "blackList":Ljava/lang/String;
    .end local v5    # "whiteList":Ljava/lang/String;
    .end local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 794
    :cond_8d
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 795
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5d

    .line 805
    .restart local v4    # "blackList":Ljava/lang/String;
    .restart local v5    # "whiteList":Ljava/lang/String;
    .restart local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a2
    const-string v4, ""

    goto :goto_73

    .line 812
    :cond_a5
    const-string v5, ""

    goto :goto_85
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 43
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_9

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_24

    .line 366
    :cond_9
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .line 367
    .local v22, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v35, 0x0

    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "No rule was specified."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v22, v35
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_bb

    move-object/from16 v23, v22

    .line 547
    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v23, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_22
    monitor-exit p0

    return-object v23

    .line 374
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_24
    :try_start_24
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 375
    .local v5, "adminUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    .line 376
    .local v28, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, checkAdminInDatabase(I)I

    move-result v4

    .line 377
    .local v4, "adminDb":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_52

    .line 378
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .line 379
    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v35, 0x0

    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v22, v35

    move-object/from16 v23, v22

    .line 381
    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_22

    .line 384
    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, mUserIdMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 385
    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v27, 0x1

    .line 386
    .local v27, "signatureMatch":Z
    const-string v20, ""

    .line 387
    .local v20, "invalidDomain":Ljava/lang/String;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v32, "values":Landroid/content/ContentValues;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v25, "selectionValues":Landroid/content/ContentValues;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v31, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .line 392
    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_81
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_33f

    .line 393
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 394
    .local v24, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    if-nez v24, :cond_a7

    .line 395
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "No rule was specified."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    .line 392
    :goto_a4
    add-int/lit8 v16, v16, 0x1

    goto :goto_81

    .line 398
    :cond_a7
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    if-nez v35, :cond_be

    .line 399
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Invalid AppIdentity object."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16
    :try_end_ba
    .catchall {:try_start_24 .. :try_end_ba} :catchall_bb

    goto :goto_a4

    .line 365
    .end local v4    # "adminDb":I
    .end local v5    # "adminUid":I
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "invalidDomain":Ljava/lang/String;
    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v25    # "selectionValues":Landroid/content/ContentValues;
    .end local v27    # "signatureMatch":Z
    .end local v28    # "userId":I
    .end local v31    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :catchall_bb
    move-exception v35

    monitor-exit p0

    throw v35

    .line 402
    .restart local v4    # "adminDb":I
    .restart local v5    # "adminUid":I
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "invalidDomain":Ljava/lang/String;
    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .restart local v25    # "selectionValues":Landroid/content/ContentValues;
    .restart local v27    # "signatureMatch":Z
    .restart local v28    # "userId":I
    .restart local v31    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .restart local v32    # "values":Landroid/content/ContentValues;
    :cond_be
    :try_start_be
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    if-eqz v35, :cond_de

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    if-eqz v35, :cond_de

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_ec

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_ec

    .line 404
    :cond_de
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Invalid domain."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_a4

    .line 408
    :cond_ec
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 409
    .local v21, "packageName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v26

    .line 410
    .local v26, "signature":Ljava/lang/String;
    const-string v35, "*"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_118

    if-eqz v26, :cond_118

    .line 411
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "There is no signature related to all applications."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_a4

    .line 414
    :cond_118
    invoke-static/range {v21 .. v21}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_142

    .line 415
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Invalid package name. - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_a4

    .line 424
    :cond_142
    if-eqz v6, :cond_1a1

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    if-nez v35, :cond_1a1

    invoke-static/range {v28 .. v28}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v35

    if-eqz v35, :cond_1a1

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, getApplicationUid(Ljava/lang/String;I)I

    move-result v8

    .line 427
    .local v8, "appUid":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v8, v0, :cond_1a1

    .line 428
    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 429
    .local v29, "userIdObj":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_172
    .catchall {:try_start_be .. :try_end_172} :catchall_bb

    .line 430
    :try_start_172
    move-object/from16 v0, p0

    iget-object v0, v0, mUserIdMap:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map;

    new-instance v37, Ljava/lang/Integer;

    move-object/from16 v0, v37

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v35, Ljava/lang/Integer;

    move-object/from16 v0, v35

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v36
    :try_end_1a1
    .catchall {:try_start_172 .. :try_end_1a1} :catchall_2db

    .line 435
    .end local v8    # "appUid":I
    .end local v29    # "userIdObj":Ljava/lang/Integer;
    :cond_1a1
    :try_start_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "android"

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v11

    .line 437
    .local v11, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1ba
    .catchall {:try_start_1a1 .. :try_end_1ba} :catchall_bb

    move-result-wide v18

    .line 439
    .local v18, "identity":J
    if-eqz v26, :cond_1c9

    :try_start_1bd
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c4
    .catchall {:try_start_1bd .. :try_end_1c4} :catchall_2de

    move-result v35

    if-nez v35, :cond_1c9

    .line 442
    const/16 v27, 0x0

    .line 445
    :cond_1c9
    :try_start_1c9
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    const/16 v30, 0x1

    .line 448
    .local v30, "validDomain":Z
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_1d6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1ea

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 449
    .local v12, "domain":Ljava/lang/String;
    move-object/from16 v20, v12

    .line 450
    invoke-static {v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v30

    .line 451
    if-nez v30, :cond_1d6

    .line 454
    .end local v12    # "domain":Ljava/lang/String;
    :cond_1ea
    if-eqz v30, :cond_208

    .line 455
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1f4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_208

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 456
    .restart local v12    # "domain":Ljava/lang/String;
    move-object/from16 v20, v12

    .line 457
    invoke-static {v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v30

    .line 458
    if-nez v30, :cond_1f4

    .line 462
    .end local v12    # "domain":Ljava/lang/String;
    :cond_208
    if-eqz v30, :cond_31b

    .line 463
    const/4 v7, 0x0

    .line 464
    .local v7, "appIsInstalled":Z
    if-nez v27, :cond_218

    .line 466
    if-eqz v6, :cond_2e3

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e3

    .line 467
    const/4 v7, 0x1

    .line 473
    :cond_218
    :goto_218
    if-nez v27, :cond_21c

    if-nez v7, :cond_30c

    .line 476
    :cond_21c
    const-string v35, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    const-string/jumbo v35, "packageName"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v35, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v35, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 485
    .local v34, "whiteListInDB":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v13

    .line 486
    .local v13, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v14

    .line 487
    .local v14, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, trimDomainUrls(Ljava/util/List;)V

    .line 488
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, trimDomainUrls(Ljava/util/List;)V

    .line 492
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .line 493
    .local v9, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v33

    .line 497
    .local v33, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v35

    if-eqz v35, :cond_27e

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v35

    if-nez v35, :cond_2e6

    :cond_27e
    const/4 v15, 0x1

    .line 499
    .local v15, "hasChangesToBeMade":Z
    :goto_27f
    if-eqz v15, :cond_2e8

    .line 502
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    .line 506
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v34

    .line 515
    const-string v35, "blacklist"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v35, "whitelist"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string/jumbo v35, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v35, v0

    const-string v36, "DomainFilterTable"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v35

    if-nez v35, :cond_2f7

    .line 520
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Failed to add/update rule in the database."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    .line 529
    :goto_2d3
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    .line 530
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V
    :try_end_2d9
    .catchall {:try_start_1c9 .. :try_end_2d9} :catchall_bb

    goto/16 :goto_a4

    .line 432
    .end local v7    # "appIsInstalled":Z
    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "hasChangesToBeMade":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "identity":J
    .end local v30    # "validDomain":Z
    .end local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "whiteListInDB":Ljava/lang/String;
    .restart local v8    # "appUid":I
    .restart local v29    # "userIdObj":Ljava/lang/Integer;
    :catchall_2db
    move-exception v35

    :try_start_2dc
    monitor-exit v36
    :try_end_2dd
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_2db

    :try_start_2dd
    throw v35

    .line 445
    .end local v8    # "appUid":I
    .end local v29    # "userIdObj":Ljava/lang/Integer;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v18    # "identity":J
    :catchall_2de
    move-exception v35

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v35

    .line 469
    .restart local v7    # "appIsInstalled":Z
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v30    # "validDomain":Z
    :cond_2e3
    const/4 v7, 0x0

    goto/16 :goto_218

    .line 497
    .restart local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "blackListInDB":Ljava/lang/String;
    .restart local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "whiteListInDB":Ljava/lang/String;
    :cond_2e6
    const/4 v15, 0x0

    goto :goto_27f

    .line 509
    .restart local v15    # "hasChangesToBeMade":Z
    :cond_2e8
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "The specified rule is already in the database."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_a4

    .line 524
    :cond_2f7
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "The rule(s) was successfully added/updated."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_2d3

    .line 532
    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "hasChangesToBeMade":Z
    .end local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "whiteListInDB":Ljava/lang/String;
    :cond_30c
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Given signature does not match with the application."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_a4

    .line 537
    .end local v7    # "appIsInstalled":Z
    :cond_31b
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Invalid domain. - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_a4

    .line 545
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "identity":J
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v26    # "signature":Ljava/lang/String;
    .end local v30    # "validDomain":Z
    :cond_33f
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_354

    if-eqz v27, :cond_354

    .line 546
    const-string v35, "ADD"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_354
    .catchall {:try_start_2dd .. :try_end_354} :catchall_bb

    :cond_354
    move-object/from16 v23, v22

    .line 547
    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto/16 :goto_22
.end method

.method adminRemoved(I)V
    .registers 5
    .param p1, "adminUid"    # I

    .prologue
    .line 994
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 995
    .local v0, "userId":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 996
    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 997
    iget-object v2, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 998
    invoke-direct {p0, v0}, clearReportForUser(I)V

    .line 1000
    :cond_1f
    return-void
.end method

.method enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1041
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1042
    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1043
    .local v8, "userId":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1045
    const-string/jumbo v0, "userId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1047
    .local v7, "selection":Landroid/content/ContentValues;
    const-string v0, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1050
    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Failed to change Domain Filter report status on database."

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1068
    :goto_43
    return-object v0

    .line 1054
    :cond_44
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 1055
    .local v9, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_74

    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 1056
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1057
    const-string v1, "REPORT"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_65
    :goto_65
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_a2

    const-string v0, "Domain Report successfully enabled."

    :goto_6f
    invoke-direct {v1, v2, v3, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_43

    .line 1058
    :cond_74
    if-nez p2, :cond_65

    invoke-direct {p0, v8}, isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1059
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1060
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1061
    invoke-direct {p0, v8}, clearReportForUser(I)V

    .line 1062
    iget-object v0, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1063
    const-string v1, "REPORT"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 1068
    :cond_a2
    const-string v0, "Domain Report successfully disabled."

    goto :goto_6f
.end method

.method getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1090
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1091
    .local v6, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v4, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterReport;>;"
    iget-object v7, p0, mDomainReportCache:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, p0, mDomainReportCache:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1108
    :cond_20
    return-object v4

    .line 1095
    :cond_21
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v5, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string/jumbo v7, "userId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1098
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterReportTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1101
    .local v3, "report":Landroid/content/ContentValues;
    const-string/jumbo v7, "packageName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_5d

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1103
    :cond_5d
    new-instance v7, Lcom/sec/enterprise/firewall/DomainFilterReport;

    const-string/jumbo v8, "time"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lcom/sec/enterprise/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42
.end method

.method getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v9, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 739
    .local v13, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 741
    .local v3, "adminUid":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v5, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v15, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "DomainFilterTable"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 747
    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 748
    .local v7, "cv":Landroid/content/ContentValues;
    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 749
    .local v11, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 750
    .local v14, "signature":Ljava/lang/String;
    if-eqz p2, :cond_65

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3d

    .line 751
    :cond_65
    const-string v17, "blacklist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 752
    .local v6, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v17, "whitelist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 753
    .local v16, "whiteListInDB":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a6

    .line 754
    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 758
    :goto_88
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_ac

    .line 759
    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 763
    :goto_98
    new-instance v4, Lcom/sec/enterprise/AppIdentity;

    invoke-direct {v4, v11, v14}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .local v4, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    new-instance v12, Lcom/sec/enterprise/firewall/DomainFilterRule;

    invoke-direct {v12, v4, v5, v15}, Lcom/sec/enterprise/firewall/DomainFilterRule;-><init>(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;Ljava/util/List;)V

    .line 765
    .local v12, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 756
    .end local v4    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v12    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    :cond_a6
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_88

    .line 761
    :cond_ac
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_98

    .line 768
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    .end local v16    # "whiteListInDB":Ljava/lang/String;
    :cond_b2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 769
    return-object v9
.end method

.method isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1073
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .registers 8
    .param p1, "adminUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 1003
    invoke-direct {p0, p1}, checkAdminInDatabase(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1006
    const-string v1, "CLEAR"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_18
    return-void
.end method

.method declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .registers 31
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_21

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_21

    .line 556
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 557
    .local v12, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "No rule was specified."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_68

    move-object v13, v12

    .line 733
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v13, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_1f
    monitor-exit p0

    return-object v13

    .line 563
    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_21
    :try_start_21
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 565
    .local v4, "adminUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, checkAdminInDatabase(I)I

    move-result v22

    if-nez v22, :cond_44

    .line 566
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 567
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "The rules are already cleared."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    :cond_42
    :goto_42
    move-object v13, v12

    .line 733
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_1f

    .line 570
    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_44
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, checkAdminInDatabase(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6b

    .line 571
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 572
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_68

    goto :goto_42

    .line 555
    .end local v4    # "adminUid":I
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_68
    move-exception v22

    monitor-exit p0

    throw v22

    .line 575
    .restart local v4    # "adminUid":I
    :cond_6b
    :try_start_6b
    sget-object v22, Lcom/sec/enterprise/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_df

    .line 577
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 578
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v15, "selectionValues":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_bc

    .line 582
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "Failed to clear rules from database."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    .line 590
    :goto_ac
    const/16 v22, 0x0

    const-string v23, "CLEAR"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_42

    .line 586
    :cond_bc
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Rules successfully cleared. Admin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    goto :goto_ac

    .line 592
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_df
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v18, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .line 594
    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 595
    .local v19, "values":Landroid/content/ContentValues;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_2d0

    .line 598
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .line 599
    .local v14, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    if-nez v22, :cond_11d

    .line 600
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Invalid AppIdentity object."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 597
    :goto_11a
    add-int/lit8 v10, v10, 0x1

    goto :goto_f7

    .line 604
    :cond_11d
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 605
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v16

    .line 606
    .local v16, "signature":Ljava/lang/String;
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_147

    if-eqz v16, :cond_147

    .line 608
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "There is no signature related to all applications."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_11a

    .line 611
    :cond_147
    invoke-static {v11}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16e

    .line 612
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid package name. - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_11a

    .line 619
    :cond_16e
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const-string/jumbo v22, "packageName"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    const-string/jumbo v24, "signature"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 625
    .local v17, "signatureInDB":Ljava/lang/String;
    if-eqz v16, :cond_19c

    if-eqz v17, :cond_1aa

    :cond_19c
    if-nez v16, :cond_1a0

    if-nez v17, :cond_1aa

    :cond_1a0
    if-eqz v16, :cond_1bc

    if-eqz v17, :cond_1bc

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1bc

    .line 629
    :cond_1aa
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Signature does not match with the previous added."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 725
    :goto_1b7
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_11a

    .line 633
    :cond_1bc
    const-string v22, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, "blackListInDB":Ljava/lang/String;
    const-string/jumbo v22, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 640
    .local v21, "whiteListInDB":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .line 641
    .local v7, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v8

    .line 644
    .local v8, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 648
    .local v9, "hasRulesToDelete":Z
    if-eqz v7, :cond_24f

    .line 649
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, trimDomainUrls(Ljava/util/List;)V

    .line 650
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 651
    .local v5, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .line 663
    .end local v9    # "hasRulesToDelete":Z
    :goto_1ed
    if-eqz v8, :cond_257

    .line 664
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, trimDomainUrls(Ljava/util/List;)V

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v20

    .line 666
    .local v20, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .line 679
    .restart local v9    # "hasRulesToDelete":Z
    :goto_204
    if-eqz v9, :cond_25f

    .line 681
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 683
    const-string v22, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    .line 691
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_282

    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_282

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_26e

    .line 695
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_1b7

    .line 656
    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_24f
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 657
    .restart local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":I
    goto :goto_1ed

    .line 672
    .end local v9    # "hasRulesToDelete":I
    :cond_257
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 673
    .restart local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":Z
    goto :goto_204

    .line 685
    :cond_25f
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule is not in the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_11a

    .line 700
    :cond_26e
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_1b7

    .line 707
    :cond_282
    const-string v22, "blacklist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v22, "whitelist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_2bd

    .line 712
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    .line 722
    :goto_2b8
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1b7

    .line 717
    :cond_2bd
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_2b8

    .line 729
    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "hasRulesToDelete":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureInDB":Ljava/lang/String;
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "whiteListInDB":Ljava/lang/String;
    :cond_2d0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_42

    .line 730
    const-string v22, "REMOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2e3
    .catchall {:try_start_6b .. :try_end_2e3} :catchall_68

    goto/16 :goto_42
.end method
