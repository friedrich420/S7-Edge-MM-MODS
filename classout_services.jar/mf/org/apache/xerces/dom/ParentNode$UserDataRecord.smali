.class Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
.super Ljava/lang/Object;
.source "ParentNode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/dom/ParentNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserDataRecord"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2d37313931353437L


# instance fields
.field fData:Ljava/lang/Object;

.field fHandler:Lmf/org/w3c/dom/UserDataHandler;

.field final synthetic this$0:Lmf/org/apache/xerces/dom/ParentNode;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V
    .registers 4
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lmf/org/w3c/dom/UserDataHandler;

    .prologue
    .line 1026
    iput-object p1, p0, this$0:Lmf/org/apache/xerces/dom/ParentNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p2, p0, fData:Ljava/lang/Object;

    .line 1028
    iput-object p3, p0, fHandler:Lmf/org/w3c/dom/UserDataHandler;

    .line 1029
    return-void
.end method
