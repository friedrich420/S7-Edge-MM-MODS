.class Lcom/android/systemui/tuner/TunerFragment$2;
.super Ljava/lang/Object;
.source "TunerFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$2;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerFragment$2;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/TunerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 82
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v1, 0x1020002

    new-instance v2, Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {v2}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>()V

    const-string v3, "DemoMode"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 84
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 85
    const/4 v1, 0x1

    return v1
.end method
