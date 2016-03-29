.class Lcom/android/settings/FontPreviewTablet$3;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreviewTablet;->setReHeightFontStyleListview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreviewTablet;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreviewTablet;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet$3;->this$0:Lcom/android/settings/FontPreviewTablet;

    iput-object p2, p0, Lcom/android/settings/FontPreviewTablet$3;->val$scrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$3;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 478
    return-void
.end method
