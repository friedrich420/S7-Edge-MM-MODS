.class Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/browser/BrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrowserProxyCache"
.end annotation


# instance fields
.field private mAdminUid:I

.field private final mContainerId:I

.field private mProxySetting:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 108
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, mUserId:I

    .line 110
    iput p3, p0, mContainerId:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, mAdminUid:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, mProxySetting:Ljava/lang/String;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .prologue
    .line 102
    iget-object v0, p0, mProxySetting:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method clear()V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 132
    iget v1, p0, mAdminUid:I

    if-eq v1, v4, :cond_2b

    .line 133
    iput v4, p0, mAdminUid:I

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, mProxySetting:Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mdm.intent.action.clear.http.proxy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 138
    .local v2, "token":J
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 140
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_2b
    return-void
.end method

.method isAlreadySet()Z
    .registers 3

    .prologue
    .line 145
    iget v0, p0, mAdminUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isOwner(I)Z
    .registers 3
    .param p1, "adminUid"    # I

    .prologue
    .line 158
    iget v0, p0, mAdminUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setProxy(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "proxySetting"    # Ljava/lang/String;
    .param p3, "broadcast"    # Z

    .prologue
    .line 116
    if-eqz p2, :cond_2f

    .line 117
    iput p1, p0, mAdminUid:I

    .line 118
    iput-object p2, p0, mProxySetting:Ljava/lang/String;

    .line 119
    if-eqz p3, :cond_2f

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mdm.intent.action.set.http.proxy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mdm.intent.extra.http.proxy.server"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 124
    .local v2, "token":J
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/browser/BrowserPolicy;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 126
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_2f
    return-void
.end method
