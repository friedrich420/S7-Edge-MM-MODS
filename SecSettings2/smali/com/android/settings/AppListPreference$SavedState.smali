.class Lcom/android/settings/AppListPreference$SavedState;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/AppListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final entryValues:[Ljava/lang/CharSequence;

.field public final showItemNone:Z

.field public final superState:Landroid/os/Parcelable;

.field public final value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/AppListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "showItemNone"    # Z
    .param p4, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    .line 208
    iput-object p2, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    .line 209
    iput-boolean p3, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    .line 210
    iput-object p4, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    .line 211
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 222
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
