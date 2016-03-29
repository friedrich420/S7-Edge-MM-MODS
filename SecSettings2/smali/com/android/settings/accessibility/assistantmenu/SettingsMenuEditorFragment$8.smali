.class synthetic Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

.field static final synthetic $SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1362
    invoke-static {}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->values()[Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$IMAGE_MODE:[I

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1276
    :goto_1
    invoke-static {}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->values()[Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I

    :try_start_2
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;->$SwitchMap$com$android$settings$accessibility$assistantmenu$SettingsMenuEditorFragment$SCROLL_MOTION:[I

    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_DOWN:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 1362
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
