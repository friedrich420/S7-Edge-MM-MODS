.class Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field swatch:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic this$1:Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/settings/sim/SimPreferenceDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    .param p2, "x1"    # Lcom/android/settings/sim/SimPreferenceDialog$1;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;)V

    return-void
.end method
