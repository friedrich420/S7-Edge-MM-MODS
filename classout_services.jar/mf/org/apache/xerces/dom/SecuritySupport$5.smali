.class Lmf/org/apache/xerces/dom/SecuritySupport$5;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/dom/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, val$file:Ljava/io/File;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
