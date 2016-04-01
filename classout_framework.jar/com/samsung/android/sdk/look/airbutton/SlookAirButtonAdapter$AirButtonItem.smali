.class public Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
.super Ljava/lang/Object;
.source "SlookAirButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirButtonItem"
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;

.field private mDescription:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mSubDescription:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, p0, mView:Landroid/view/View;

    .line 233
    iput-object v0, p0, mImage:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 241
    iput-object v0, p0, mSubDescription:Ljava/lang/String;

    .line 245
    iput-object v0, p0, mData:Ljava/lang/Object;

    .line 277
    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    if-nez p3, :cond_1c

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "subDescription"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, p0, mView:Landroid/view/View;

    .line 233
    iput-object v0, p0, mImage:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 241
    iput-object v0, p0, mSubDescription:Ljava/lang/String;

    .line 245
    iput-object v0, p0, mData:Ljava/lang/Object;

    .line 294
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p4, :cond_1e

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the Drawable, String, subDescription and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1e
    invoke-virtual {p0, p1, p2, p3, p4}, set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, p0, mView:Landroid/view/View;

    .line 233
    iput-object v0, p0, mImage:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object v0, p0, mDescription:Ljava/lang/String;

    .line 241
    iput-object v0, p0, mSubDescription:Ljava/lang/String;

    .line 245
    iput-object v0, p0, mData:Ljava/lang/Object;

    .line 261
    if-nez p1, :cond_1a

    if-nez p2, :cond_1a

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should set the View and Object in Param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1a
    invoke-virtual {p0, p1, p2}, set(Landroid/view/View;Ljava/lang/Object;)V

    .line 265
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, mView:Landroid/view/View;

    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 324
    iput-object p1, p0, mImage:Landroid/graphics/drawable/Drawable;

    .line 325
    iput-object p2, p0, mDescription:Ljava/lang/String;

    .line 326
    iput-object p3, p0, mData:Ljava/lang/Object;

    .line 327
    return-void
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "subDescription"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 338
    iput-object p1, p0, mImage:Landroid/graphics/drawable/Drawable;

    .line 339
    iput-object p2, p0, mDescription:Ljava/lang/String;

    .line 340
    iput-object p3, p0, mSubDescription:Ljava/lang/String;

    .line 341
    iput-object p4, p0, mData:Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public set(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 312
    iput-object p1, p0, mView:Landroid/view/View;

    .line 313
    iput-object p2, p0, mData:Ljava/lang/Object;

    .line 314
    return-void
.end method
