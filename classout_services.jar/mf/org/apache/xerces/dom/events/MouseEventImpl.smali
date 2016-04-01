.class public Lmf/org/apache/xerces/dom/events/MouseEventImpl;
.super Lmf/org/apache/xerces/dom/events/UIEventImpl;
.source "MouseEventImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/events/MouseEvent;


# instance fields
.field private fAltKey:Z

.field private fButton:S

.field private fClientX:I

.field private fClientY:I

.field private fCtrlKey:Z

.field private fMetaKey:Z

.field private fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

.field private fScreenX:I

.field private fScreenY:I

.field private fShiftKey:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/events/UIEventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltKey()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, fAltKey:Z

    return v0
.end method

.method public getButton()S
    .registers 2

    .prologue
    .line 79
    iget-short v0, p0, fButton:S

    return v0
.end method

.method public getClientX()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, fClientX:I

    return v0
.end method

.method public getClientY()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, fClientY:I

    return v0
.end method

.method public getCtrlKey()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, fCtrlKey:Z

    return v0
.end method

.method public getMetaKey()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, fMetaKey:Z

    return v0
.end method

.method public getRelatedTarget()Lmf/org/w3c/dom/events/EventTarget;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

    return-object v0
.end method

.method public getScreenX()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, fScreenX:I

    return v0
.end method

.method public getScreenY()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, fScreenY:I

    return v0
.end method

.method public getShiftKey()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, fShiftKey:Z

    return v0
.end method

.method public initMouseEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;IIIIIZZZZSLmf/org/w3c/dom/events/EventTarget;)V
    .registers 16
    .param p1, "typeArg"    # Ljava/lang/String;
    .param p2, "canBubbleArg"    # Z
    .param p3, "cancelableArg"    # Z
    .param p4, "viewArg"    # Lmf/org/w3c/dom/views/AbstractView;
    .param p5, "detailArg"    # I
    .param p6, "screenXArg"    # I
    .param p7, "screenYArg"    # I
    .param p8, "clientXArg"    # I
    .param p9, "clientYArg"    # I
    .param p10, "ctrlKeyArg"    # Z
    .param p11, "altKeyArg"    # Z
    .param p12, "shiftKeyArg"    # Z
    .param p13, "metaKeyArg"    # Z
    .param p14, "buttonArg"    # S
    .param p15, "relatedTargetArg"    # Lmf/org/w3c/dom/events/EventTarget;

    .prologue
    .line 90
    iput p6, p0, fScreenX:I

    .line 91
    iput p7, p0, fScreenY:I

    .line 92
    iput p8, p0, fClientX:I

    .line 93
    iput p9, p0, fClientY:I

    .line 94
    iput-boolean p10, p0, fCtrlKey:Z

    .line 95
    iput-boolean p11, p0, fAltKey:Z

    .line 96
    iput-boolean p12, p0, fShiftKey:Z

    .line 97
    iput-boolean p13, p0, fMetaKey:Z

    .line 98
    iput-short p14, p0, fButton:S

    .line 99
    iput-object p15, p0, fRelatedTarget:Lmf/org/w3c/dom/events/EventTarget;

    .line 100
    invoke-super/range {p0 .. p5}, Lmf/org/apache/xerces/dom/events/UIEventImpl;->initUIEvent(Ljava/lang/String;ZZLmf/org/w3c/dom/views/AbstractView;I)V

    .line 101
    return-void
.end method
