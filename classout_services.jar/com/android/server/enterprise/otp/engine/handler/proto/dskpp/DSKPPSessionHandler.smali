.class public Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
.super Ljava/lang/Object;
.source "DSKPPSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;,
        Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;
    }
.end annotation


# static fields
.field static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$1;

    .prologue
    .line 13
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 46
    sput-object p0, mContext:Landroid/content/Context;

    .line 47
    :cond_6
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler$InstanceHolder;->INSTANCE:Lcom/android/server/enterprise/otp/engine/handler/proto/dskpp/DSKPPSessionHandler;

    return-object v0
.end method


# virtual methods
.method public createSession(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isTwoPass"    # Z

    .prologue
    .line 16
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;-><init>()V

    .line 17
    .local v0, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mSessionId:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    .line 19
    const/16 v1, 0x350

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mCurrStep:I

    .line 20
    if-eqz p2, :cond_22

    .line 21
    const/16 v1, 0x353

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    .line 24
    :goto_17
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setDskppSessionData(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 23
    :cond_22
    const/16 v1, 0x352

    iput v1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    goto :goto_17
.end method

.method public deleteSession(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->deleteDskppSession(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public validateSession(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "step"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;-><init>()V

    .line 29
    .local v0, "data":Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;
    iput-object p1, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mPkgName:Ljava/lang/String;

    .line 30
    iput p2, v0, Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;->mNextStep:I

    .line 31
    sget-object v1, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->validateDskppSession(Lcom/android/server/enterprise/otp/engine/handler/db/SessionData;)Z

    move-result v1

    return v1
.end method
