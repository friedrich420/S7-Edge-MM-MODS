.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;
.super Landroid/database/ContentObserver;
.source "ColorChipReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$2;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    .line 230
    return-void
.end method
