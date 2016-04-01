.class Lmf/org/apache/html/dom/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/html/dom/SecuritySupport;->getParentClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, val$cl:Ljava/lang/ClassLoader;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "parent":Ljava/lang/ClassLoader;
    :try_start_1
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_d

    move-result-object v0

    .line 76
    :goto_7
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .end local v0    # "parent":Ljava/lang/ClassLoader;
    :cond_c
    return-object v0

    .line 72
    .restart local v0    # "parent":Ljava/lang/ClassLoader;
    :catch_d
    move-exception v1

    goto :goto_7
.end method
