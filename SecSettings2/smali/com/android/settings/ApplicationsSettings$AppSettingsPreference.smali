.class public Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
.super Landroid/preference/Preference;
.source "ApplicationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApplicationsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppSettingsPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApplicationsSettings;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/ApplicationsSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/android/settings/ApplicationsSettings;

    .line 327
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    .line 328
    const v0, 0x7f040219

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setLayoutResource(I)V

    .line 329
    invoke-direct {p0, p2}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/ApplicationsSettings;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/android/settings/ApplicationsSettings;

    .line 332
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    .line 333
    const v0, 0x7f040219

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setLayoutResource(I)V

    .line 334
    invoke-virtual {p0, p3}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 335
    invoke-virtual {p0, p4}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 336
    invoke-direct {p0, p2}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    new-instance v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;-><init>(Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 362
    return-void
.end method
