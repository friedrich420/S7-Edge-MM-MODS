.class Lcom/android/settings/spen/PenAirViewSettingsMenu$3;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$current:I


# direct methods
.method constructor <init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;I)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    iput p2, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # getter for: Lcom/android/settings/spen/PenAirViewSettingsMenu;->mViewPager:Lcom/android/settings/WrapContentHeightViewPager;
    invoke-static {v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$200(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/WrapContentHeightViewPager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$3;->val$current:I

    invoke-virtual {v0, v1}, Lcom/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 155
    return-void
.end method
