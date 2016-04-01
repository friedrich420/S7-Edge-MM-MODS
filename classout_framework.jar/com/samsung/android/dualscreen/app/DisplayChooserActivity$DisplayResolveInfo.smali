.class final Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "DisplayChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayId:I

.field displayLabel:Ljava/lang/CharSequence;

.field ri:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pDisplayId"    # I

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, ri:Landroid/content/pm/ResolveInfo;

    .line 267
    iput-object p2, p0, displayLabel:Ljava/lang/CharSequence;

    .line 268
    iput p3, p0, displayId:I

    .line 269
    return-void
.end method
