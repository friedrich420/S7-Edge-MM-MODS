.class public Lcom/android/systemui/statusbar/stack/StackViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "StackViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public height:I

.field public hideSensitive:Z

.field public location:I

.field public notGoneIndex:I

.field public topOverLap:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 73
    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 75
    .local v0, "svs":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 76
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 77
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 78
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 79
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 80
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 81
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    .line 82
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 83
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 85
    .end local v0    # "svs":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_0
    return-void
.end method
