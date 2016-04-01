.class public Lmf/javax/xml/transform/dom/DOMSource;
.super Ljava/lang/Object;
.source "DOMSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMSource/feature"


# instance fields
.field private node:Lmf/org/w3c/dom/Node;

.field private systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;)V
    .registers 2
    .param p1, "n"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .registers 3
    .param p1, "node"    # Lmf/org/w3c/dom/Node;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0, p1}, setNode(Lmf/org/w3c/dom/Node;)V

    .line 117
    invoke-virtual {p0, p2}, setSystemId(Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getNode()Lmf/org/w3c/dom/Node;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, node:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, systemID:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Lmf/org/w3c/dom/Node;)V
    .registers 2
    .param p1, "node"    # Lmf/org/w3c/dom/Node;

    .prologue
    .line 126
    iput-object p1, p0, node:Lmf/org/w3c/dom/Node;

    .line 127
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, systemID:Ljava/lang/String;

    .line 146
    return-void
.end method
