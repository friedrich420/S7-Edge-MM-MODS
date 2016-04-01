.class Lmf/javax/xml/xpath/SecuritySupport$6;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/xpath/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/xpath/SecuritySupport;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmf/javax/xml/xpath/SecuritySupport;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/xpath/SecuritySupport;

    iput-object p2, p0, val$cl:Ljava/lang/ClassLoader;

    iput-object p3, p0, val$name:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    if-nez v1, :cond_b

    .line 141
    iget-object v1, p0, val$name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 145
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_a
    return-object v0

    .line 143
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    :cond_b
    iget-object v1, p0, val$cl:Ljava/lang/ClassLoader;

    iget-object v2, p0, val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .restart local v0    # "enumeration":Ljava/util/Enumeration;
    goto :goto_a
.end method
