.class Lcom/android/settings/FontPreviewTablet$5;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreviewTablet;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreviewTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreviewTablet;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet$5;->this$0:Lcom/android/settings/FontPreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$5;->this$0:Lcom/android/settings/FontPreviewTablet;

    # invokes: Lcom/android/settings/FontPreviewTablet;->doneFontPreview()V
    invoke-static {v0}, Lcom/android/settings/FontPreviewTablet;->access$600(Lcom/android/settings/FontPreviewTablet;)V

    .line 837
    return-void
.end method
