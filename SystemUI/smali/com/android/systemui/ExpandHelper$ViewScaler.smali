.class Lcom/android/systemui/ExpandHelper$ViewScaler;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ExpandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewScaler"
.end annotation


# instance fields
.field mView:Lcom/android/systemui/statusbar/ExpandableView;

.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getNaturalHeight(I)I
    .locals 1
    .param p1, "maximum"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "h"    # F

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setContentHeight(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->this$0:Lcom/android/systemui/ExpandHelper;

    # setter for: Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F
    invoke-static {v0, p1}, Lcom/android/systemui/ExpandHelper;->access$402(Lcom/android/systemui/ExpandHelper;F)F

    .line 143
    return-void
.end method

.method public setView(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 138
    return-void
.end method
