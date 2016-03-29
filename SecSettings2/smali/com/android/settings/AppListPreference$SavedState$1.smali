.class final Lcom/android/settings/AppListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/settings/AppListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    .line 231
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 232
    .local v1, "showItemNone":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .line 233
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v4, Lcom/android/settings/AppListPreference$SavedState;

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v4

    .line 231
    .end local v1    # "showItemNone":Z
    .end local v2    # "superState":Landroid/os/Parcelable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/AppListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    new-array v0, p1, [Lcom/android/settings/AppListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->newArray(I)[Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
