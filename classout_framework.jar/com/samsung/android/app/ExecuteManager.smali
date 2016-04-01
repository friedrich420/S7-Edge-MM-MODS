.class public Lcom/samsung/android/app/ExecuteManager;
.super Ljava/lang/Object;
.source "ExecuteManager.java"


# static fields
.field public static final EXTRA_EXECUTE_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.ICON"

.field public static final EXTRA_EXECUTE_INTENT:Ljava/lang/String; = "com.samsung.android.execute.extra.INTENT"

.field public static final EXTRA_EXECUTE_NAME:Ljava/lang/String; = "com.samsung.android.execute.extra.NAME"

.field public static final EXTRA_EXECUTE_SMALL_ICON:Ljava/lang/String; = "com.samsung.android.execute.extra.SMALLICON"

.field private static final TAG:Ljava/lang/String; = "ExecuteManager"

.field private static mService:Lcom/samsung/android/app/IExecuteManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 63
    const-string v0, "execute"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/IExecuteManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/IExecuteManager;

    move-result-object v0

    sput-object v0, mService:Lcom/samsung/android/app/IExecuteManager;

    .line 64
    return-void
.end method


# virtual methods
.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    sget-object v1, mService:Lcom/samsung/android/app/IExecuteManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/IExecuteManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 76
    :goto_6
    return-object v1

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ExecuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExecutableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getExecutableInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    sget-object v1, mService:Lcom/samsung/android/app/IExecuteManager;

    invoke-interface {v1}, Lcom/samsung/android/app/IExecuteManager;->getExecutableInfos()Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 90
    :goto_6
    return-object v1

    .line 88
    :catch_7
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ExecuteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExecutableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    goto :goto_6
.end method
