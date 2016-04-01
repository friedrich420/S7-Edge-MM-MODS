.class Lmf/javax/xml/xpath/SecuritySupport$1;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/xpath/SecuritySupport;


# direct methods
.method constructor <init>(Lmf/javax/xml/xpath/SecuritySupport;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/xpath/SecuritySupport;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 71
    :goto_9
    return-object v0

    .line 70
    :catch_a
    move-exception v1

    goto :goto_9
.end method
