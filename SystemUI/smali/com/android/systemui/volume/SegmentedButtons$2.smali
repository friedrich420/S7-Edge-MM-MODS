.class Lcom/android/systemui/volume/SegmentedButtons$2;
.super Ljava/lang/Object;
.source "SegmentedButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SegmentedButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SegmentedButtons;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons$2;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons$2;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 119
    return-void
.end method
