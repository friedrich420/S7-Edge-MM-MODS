.class Lmf/javax/xml/transform/SecuritySupport$4;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/transform/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/transform/SecuritySupport;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/transform/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/transform/SecuritySupport;

    iput-object p2, p0, val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, val$name:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_d

    .line 109
    const-class v1, Ljava/lang/Object;

    iget-object v2, p0, val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    .local v0, "ris":Ljava/io/InputStream;
    :goto_c
    return-object v0

    .line 111
    .end local v0    # "ris":Ljava/io/InputStream;
    :cond_d
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "ris":Ljava/io/InputStream;
    goto :goto_c
.end method
