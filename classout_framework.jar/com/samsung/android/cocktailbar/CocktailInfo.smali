.class public Lcom/samsung/android/cocktailbar/CocktailInfo;
.super Ljava/lang/Object;
.source "CocktailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategory:I

.field private mClassInfo:Landroid/content/ComponentName;

.field private mContentInfo:Landroid/os/Bundle;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mDisplayPolicy:I

.field private mHelpView:Landroid/widget/RemoteViews;

.field private mOrientation:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 315
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, mUserId:I

    .line 38
    iput v2, p0, mOrientation:I

    .line 40
    iput v2, p0, mDisplayPolicy:I

    .line 42
    iput v2, p0, mCategory:I

    .line 44
    iput-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    .line 46
    iput-object v1, p0, mHelpView:Landroid/widget/RemoteViews;

    .line 48
    iput-object v1, p0, mContentInfo:Landroid/os/Bundle;

    .line 50
    iput-object v1, p0, mClassInfo:Landroid/content/ComponentName;

    .line 130
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, mOrientation:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, mDisplayPolicy:I

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, mCategory:I

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 35
    iput-object p1, p0, mContentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 35
    iput-object p1, p0, mHelpView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/cocktailbar/CocktailInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, mUserId:I

    return p1
.end method

.method static synthetic access$602(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 35
    iput-object p1, p0, mContentInfo:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailInfo;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 35
    iput-object p1, p0, mClassInfo:Landroid/content/ComponentName;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "U:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDisplayPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "dumpResult":Ljava/lang/String;
    iget-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_50

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has RemoteViews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_50
    iget-object v1, p0, mContentInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_67

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has ContentInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_67
    iget-object v1, p0, mClassInfo:Landroid/content/ComponentName;

    if-eqz v1, :cond_88

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ClassInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mClassInfo:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_88
    iget-object v1, p0, mHelpView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_9f

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has HelpView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_9f
    return-object v0
.end method

.method public getCategory()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, mCategory:I

    return v0
.end method

.method public getClassInfo()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentInfo()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, mContentInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getDisplayPolicy()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, mDisplayPolicy:I

    return v0
.end method

.method public getHelpView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, mOrientation:I

    return v0
.end method

.method public mergeInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .prologue
    const/4 v1, 0x0

    .line 226
    iget v0, p1, mOrientation:I

    iput v0, p0, mOrientation:I

    .line 227
    iget v0, p1, mCategory:I

    iput v0, p0, mCategory:I

    .line 228
    iget v0, p1, mDisplayPolicy:I

    iput v0, p0, mDisplayPolicy:I

    .line 229
    iget-object v0, p1, mContentInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 230
    iget-object v0, p1, mContentInfo:Landroid/os/Bundle;

    iput-object v0, p0, mContentInfo:Landroid/os/Bundle;

    .line 231
    iput-object v1, p0, mContentView:Landroid/widget/RemoteViews;

    .line 233
    :cond_17
    iget-object v0, p1, mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_21

    .line 234
    iget-object v0, p1, mContentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    .line 235
    iput-object v1, p0, mContentInfo:Landroid/os/Bundle;

    .line 237
    :cond_21
    iget-object v0, p1, mHelpView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_29

    .line 238
    iget-object v0, p1, mHelpView:Landroid/widget/RemoteViews;

    iput-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    .line 240
    :cond_29
    iget-object v0, p1, mClassInfo:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    .line 241
    iget-object v0, p1, mClassInfo:Landroid/content/ComponentName;

    iput-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    .line 243
    :cond_31
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 294
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    .line 295
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mUserId:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mOrientation:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mDisplayPolicy:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mCategory:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, mContentInfo:Landroid/os/Bundle;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    :goto_45
    iput-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    .line 302
    return-void

    .line 301
    :cond_48
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public setCategory(I)V
    .registers 2
    .param p1, "category"    # I

    .prologue
    .line 164
    iput p1, p0, mCategory:I

    .line 165
    return-void
.end method

.method public updateContentView(Landroid/widget/RemoteViews;Z)V
    .registers 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .prologue
    .line 207
    if-eqz p2, :cond_c

    iget-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    .line 208
    iget-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    .line 212
    :goto_b
    return-void

    .line 210
    :cond_c
    iput-object p1, p0, mContentView:Landroid/widget/RemoteViews;

    goto :goto_b
.end method

.method public updateHelpView(Landroid/widget/RemoteViews;Z)V
    .registers 4
    .param p1, "helpView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .prologue
    .line 218
    if-eqz p2, :cond_c

    iget-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    .line 219
    iget-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    .line 223
    :goto_b
    return-void

    .line 221
    :cond_c
    iput-object p1, p0, mHelpView:Landroid/widget/RemoteViews;

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 273
    iget-object v0, p0, mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 274
    iget-object v0, p0, mHelpView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 275
    iget v0, p0, mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, mDisplayPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v0, p0, mContentInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, mClassInfo:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_30
    return-void

    .line 284
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30
.end method
