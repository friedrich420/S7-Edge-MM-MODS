.class Lcom/android/systemui/volume/SpTexts$1;
.super Ljava/lang/Object;
.source "SpTexts.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SpTexts;->add(Landroid/widget/TextView;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SpTexts;

.field final synthetic val$sp:I

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    iput-object p2, p0, Lcom/android/systemui/volume/SpTexts$1;->val$text:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/systemui/volume/SpTexts$1;->val$sp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/SpTexts$1;->this$0:Lcom/android/systemui/volume/SpTexts;

    iget-object v1, p0, Lcom/android/systemui/volume/SpTexts$1;->val$text:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/volume/SpTexts$1;->val$sp:I

    # invokes: Lcom/android/systemui/volume/SpTexts;->setTextSizeH(Landroid/widget/TextView;I)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/SpTexts;->access$000(Lcom/android/systemui/volume/SpTexts;Landroid/widget/TextView;I)V

    .line 56
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    return-void
.end method
