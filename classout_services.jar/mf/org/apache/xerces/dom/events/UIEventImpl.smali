.class public Lmf/org/apache/xerces/dom/events/UIEventImpl;
.super Lmf/org/apache/xerces/dom/events/EventImpl;
.source "UIEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/UIEvent;


# instance fields
.field private fDetail:I

.field private fView:Lmf/org/w3c/dom/views/AbstractView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/EventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, fDetail:I

    return v0
.end method

.method public getView()Lmf/org/w3c/dom/views/AbstractView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, fView:Lmf/org/w3c/dom/views/AbstractView;

    return-object v0
.end method

.method public initUIEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;I)V
    .registers 6
    .param p1, "typeArg"    # Ljava/lang/String;
    .param p2, "canBubbleArg"    # Z
    .param p3, "cancelableArg"    # Z
    .param p4, "viewArg"    # Lmf/org/w3c/dom/views/AbstractView;
    .param p5, "detailArg"    # I

    .prologue
    .line 47
    iput-object p4, p0, fView:Lmf/org/w3c/dom/views/AbstractView;

    .line 48
    iput p5, p0, fDetail:I

    .line 49
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    .line 50
    return-void
.end method
