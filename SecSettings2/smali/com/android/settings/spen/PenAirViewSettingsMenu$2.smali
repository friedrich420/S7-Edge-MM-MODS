.class Lcom/android/settings/spen/PenAirViewSettingsMenu$2;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/PenAirViewSettingsMenu;->createAirViewSetting(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 141
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$2;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    invoke-virtual {v0, p1}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->changeColor(I)V

    .line 135
    return-void
.end method
