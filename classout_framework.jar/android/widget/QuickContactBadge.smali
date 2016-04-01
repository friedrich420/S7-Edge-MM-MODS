.class public Landroid/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final EXTRA_URI_CONTENT:Ljava/lang/String; = "uri_content"

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3


# instance fields
.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPrioritizedMimeType:Ljava/lang/String;

.field private mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    iput-object v1, p0, mExtras:Landroid/os/Bundle;

    .line 64
    iput-object v1, p0, mExcludeMimes:[Ljava/lang/String;

    .line 103
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v1, 0x125

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {p0}, isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 109
    new-instance v1, Landroid/widget/QuickContactBadge$QueryHandler;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/widget/QuickContactBadge$QueryHandler;-><init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v1, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    .line 111
    :cond_2e
    invoke-virtual {p0, p0}, setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;

    .prologue
    .line 54
    iget-object v0, p0, mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 54
    iput-object p1, p0, mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/QuickContactBadge;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;

    .prologue
    .line 54
    invoke-direct {p0}, onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;

    .prologue
    .line 54
    iget-object v0, p0, mPrioritizedMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/QuickContactBadge;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;

    .prologue
    .line 54
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/QuickContactBadge;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/QuickContactBadge;

    .prologue
    .line 54
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isAssigned()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    iget-object v0, p0, mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onContactUriChanged()V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, setEnabled(Z)V

    .line 297
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 12
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 233
    iput-object p1, p0, mContactEmail:Ljava/lang/String;

    .line 234
    iput-object p3, p0, mExtras:Landroid/os/Bundle;

    .line 235
    if-nez p2, :cond_23

    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_23

    .line 236
    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_22
    return-void

    .line 240
    :cond_23
    iput-object v2, p0, mContactUri:Landroid/net/Uri;

    .line 241
    invoke-direct {p0}, onContactUriChanged()V

    goto :goto_22
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 12
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 273
    iput-object p1, p0, mContactPhone:Ljava/lang/String;

    .line 274
    iput-object p3, p0, mExtras:Landroid/os/Bundle;

    .line 275
    if-nez p2, :cond_1f

    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_1f

    .line 276
    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_1e
    return-void

    .line 280
    :cond_1f
    iput-object v2, p0, mContactUri:Landroid/net/Uri;

    .line 281
    invoke-direct {p0}, onContactUriChanged()V

    goto :goto_1e
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 199
    iput-object p1, p0, mContactUri:Landroid/net/Uri;

    .line 200
    iput-object v0, p0, mContactEmail:Ljava/lang/String;

    .line 201
    iput-object v0, p0, mContactPhone:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, onContactUriChanged()V

    .line 203
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 127
    iget-object v0, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 128
    iget-object v0, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 130
    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 117
    iget-object v0, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 118
    iget-object v0, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 119
    invoke-virtual {p0}, invalidate()V

    .line 121
    :cond_1b
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 326
    const-class v0, Landroid/widget/QuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 304
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1c

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v2, "extras":Landroid/os/Bundle;
    :goto_a
    iget-object v0, p0, mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1f

    .line 306
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, mContactUri:Landroid/net/Uri;

    iget-object v3, p0, mExcludeMimes:[Ljava/lang/String;

    iget-object v4, p0, mPrioritizedMimeType:Ljava/lang/String;

    invoke-static {v0, p0, v1, v3, v4}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_1b
    :goto_1b
    return-void

    .line 304
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1c
    iget-object v2, p0, mExtras:Landroid/os/Bundle;

    goto :goto_a

    .line 308
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1f
    iget-object v0, p0, mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_46

    .line 309
    const-string/jumbo v0, "uri_content"

    iget-object v1, p0, mContactEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 313
    :cond_46
    iget-object v0, p0, mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    if-eqz v0, :cond_1b

    .line 314
    const-string/jumbo v0, "uri_content"

    iget-object v1, p0, mContactPhone:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, mQueryHandler:Landroid/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x3

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 172
    :cond_a
    :goto_a
    return-void

    .line 155
    :cond_b
    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_a

    .line 161
    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget v1, p0, mPaddingTop:I

    if-nez v1, :cond_3a

    iget v1, p0, mPaddingLeft:I

    if-nez v1, :cond_3a

    .line 164
    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a

    .line 166
    :cond_3a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 167
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 168
    iget v1, p0, mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 169
    iget-object v1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_a
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .registers 2
    .param p1, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, mExcludeMimes:[Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setImageToDefault()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_f

    .line 184
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10803c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 186
    :cond_f
    iget-object v0, p0, mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 135
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "overlay"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 292
    iput-object p1, p0, mOverlay:Landroid/graphics/drawable/Drawable;

    .line 293
    return-void
.end method

.method public setPrioritizedMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "prioritizedMimeType"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, mPrioritizedMimeType:Ljava/lang/String;

    .line 144
    return-void
.end method
