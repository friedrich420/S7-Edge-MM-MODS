.class Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isInExpandedMode:Z

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5661
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 5628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/PhoneWindow$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/internal/policy/PhoneWindow$1;

    .prologue
    .line 5628
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$4100(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 2
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 5628
    invoke-static {p0}, readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    .registers 5
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5649
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    invoke-direct {v0}, <init>()V

    .line 5650
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, featureId:I

    .line 5651
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_29

    move v1, v2

    :goto_14
    iput-boolean v1, v0, isOpen:Z

    .line 5652
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2b

    :goto_1c
    iput-boolean v2, v0, isInExpandedMode:Z

    .line 5654
    iget-boolean v1, v0, isOpen:Z

    if-eqz v1, :cond_28

    .line 5655
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, menuState:Landroid/os/Bundle;

    .line 5658
    :cond_28
    return-object v0

    :cond_29
    move v1, v3

    .line 5651
    goto :goto_14

    :cond_2b
    move v2, v3

    .line 5652
    goto :goto_1c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 5635
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5639
    iget v0, p0, featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5640
    iget-boolean v0, p0, isOpen:Z

    if-eqz v0, :cond_20

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5641
    iget-boolean v0, p0, isInExpandedMode:Z

    if-eqz v0, :cond_22

    :goto_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5643
    iget-boolean v0, p0, isOpen:Z

    if-eqz v0, :cond_1f

    .line 5644
    iget-object v0, p0, menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 5646
    :cond_1f
    return-void

    :cond_20
    move v0, v2

    .line 5640
    goto :goto_c

    :cond_22
    move v1, v2

    .line 5641
    goto :goto_13
.end method
