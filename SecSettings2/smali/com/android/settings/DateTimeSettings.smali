.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/sec/android/touchwiz/app/TwDatePickerDialog$OnDateSetListener;
.implements Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/preference/PreferenceGroup;

.field private mAutoTimePref:Landroid/preference/SwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimeDisplayScheme:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;

.field private mTimeZoneRecommend:Landroid/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 909
    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 139
    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    .line 705
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 300
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "firstRun"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 302
    .local v6, "isFirstRun":Z
    if-ne v6, v8, :cond_0

    .line 346
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v7, "auto_time"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 307
    .local v1, "autoEnabled":Z
    const-string v7, "auto_time_zone"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 309
    .local v2, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "content://com.sec.knox.provider/DateTimePolicy"

    const-string v11, "isDateTimeChangeEnalbed"

    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 311
    .local v5, "isDateTimeChangeEnabled":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v8, :cond_2

    :cond_1
    move v3, v8

    .line 313
    .local v3, "dateTimeChangeEnabled":Z
    :goto_1
    if-nez v3, :cond_3

    .line 314
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 316
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 317
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 318
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_2
    move v3, v9

    .line 311
    goto :goto_1

    .line 322
    .restart local v3    # "dateTimeChangeEnabled":Z
    :cond_3
    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 323
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 325
    .local v0, "activePhone":I
    const/4 v7, 0x4

    if-lt v0, v7, :cond_4

    .line 326
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 327
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 328
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 330
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 332
    :cond_4
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_7

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 334
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 336
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    move v7, v9

    .line 332
    goto :goto_2

    :cond_7
    move v7, v9

    .line 333
    goto :goto_3

    .line 339
    .end local v0    # "activePhone":I
    :cond_8
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 341
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 343
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v7, v9

    .line 339
    goto :goto_4

    :cond_b
    move v7, v9

    .line 340
    goto :goto_5
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 502
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 503
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 505
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 506
    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 507
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 508
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 599
    :cond_0
    :goto_0
    return v1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method static getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "mResources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 664
    const v3, 0x7f0800c5

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 666
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 670
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 672
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 673
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 674
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 681
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 682
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 683
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 695
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 702
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 678
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 696
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 688
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 689
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 698
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 699
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 692
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 10
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 631
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 634
    .local v5, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 636
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 640
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 641
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 642
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 645
    if-nez p1, :cond_2

    .line 658
    .end local v2    # "gmtString":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 641
    .end local v3    # "isRtl":Z
    .restart local v2    # "gmtString":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 642
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 650
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 651
    .local v6, "zoneNameFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 652
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, "zoneNameString":Ljava/lang/String;
    const-string v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 655
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-static {v8, v9}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 658
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private initUI()V
    .locals 14

    .prologue
    const v13, 0x7f0e1151

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 186
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 189
    :cond_0
    const v8, 0x7f080032

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 191
    const-string v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "autoTimeEnabled":Z
    const-string v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 193
    .local v1, "autoTimeZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eq v0, v1, :cond_1

    .line 194
    move v1, v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "auto_time_zone"

    if-eqz v0, :cond_b

    move v8, v9

    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_1
    const-string v8, "auto_time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    .line 201
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 203
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 204
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 212
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "firstRun"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 214
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 216
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    const-string v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_4

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "auto_time_zone"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    const/4 v1, 0x0

    .line 225
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 227
    const-string v8, "time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 228
    const-string v8, "24 hour"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 229
    const-string v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 230
    const-string v8, "date"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 231
    const-string v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    .line 232
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 233
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 234
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 235
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 236
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 237
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 240
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-nez v8, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_5
    const-string v8, "oversea"

    const-string v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 245
    .local v5, "isRoamingArea":Z
    if-nez v5, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e12a1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 248
    .local v7, "sText":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 255
    .end local v7    # "sText":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_6

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    :cond_6
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_d

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 260
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_e

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_f

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 263
    const-string v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 264
    if-eqz v0, :cond_7

    .line 265
    const-string v8, "date"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 266
    const-string v8, "time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 267
    const-string v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 269
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 277
    const-string v8, "category_international_roaming_time_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    .line 278
    const-string v8, "time_zone_recommend"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    .line 279
    const-string v8, "time_display_scheme_setting"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    .line 281
    const-string v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 282
    if-eqz v4, :cond_8

    .line 283
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v8, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 289
    :cond_9
    iput-boolean v9, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 290
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 291
    const-string v8, "DateTimeSettings"

    const-string v9, "Not in roaming state"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->refresRoaming()V

    .line 295
    return-void

    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isFirstRun":Z
    .end local v5    # "isRoamingArea":Z
    :cond_b
    move v8, v10

    .line 195
    goto/16 :goto_0

    .line 251
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "isFirstRun":Z
    .restart local v5    # "isRoamingArea":Z
    :cond_c
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 252
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_d
    move v8, v10

    .line 259
    goto/16 :goto_2

    :cond_e
    move v8, v10

    .line 260
    goto/16 :goto_3

    :cond_f
    move v8, v10

    .line 261
    goto/16 :goto_4
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 593
    return-void

    .line 590
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 604
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 606
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 607
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 608
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 609
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 611
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 612
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 614
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 617
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 619
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 620
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 621
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 622
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 623
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 625
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 626
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 628
    :cond_0
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 2
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 725
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 726
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 727
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x26

    return v0
.end method

.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 866
    const-string v0, "0"

    .line 867
    .local v0, "current_slot":Ljava/lang/String;
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    const-string v0, "0"

    .line 875
    :goto_0
    return-object v0

    .line 869
    :cond_0
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    const-string v0, "1"

    goto :goto_0

    .line 872
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 4

    .prologue
    .line 804
    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "simState":Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 808
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataRoamingSecondary()Z
    .locals 4

    .prologue
    .line 813
    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "simState2":Ljava/lang/String;
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 817
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlot1CdmaActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 857
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 858
    .local v1, "cdmaCardStatus":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 859
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 860
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdmaActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdmaCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "cdmaActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 858
    goto :goto_0

    .restart local v0    # "cdmaActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 862
    goto :goto_1
.end method

.method public isSlot1GsmActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 838
    const/16 v1, 0x9

    .line 839
    .local v1, "gsmCardStatus":I
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 840
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 841
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 842
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 840
    goto :goto_0

    .restart local v0    # "gsmActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 844
    goto :goto_1
.end method

.method public isSlot2GsmActive()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 848
    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 849
    .local v1, "gsmCardStatus":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    .line 850
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 851
    .local v2, "isSlotSwitched":Z
    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_0
    move v0, v4

    .line 849
    goto :goto_0

    .restart local v0    # "gsmActive":Z
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    move v3, v4

    .line 853
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 575
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 178
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 180
    new-instance v0, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    .line 182
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 24
    .param p1, "id"    # I

    .prologue
    .line 457
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 458
    .local v20, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 495
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 460
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v22

    .line 461
    .local v22, "mCalendar":Ljava/util/Calendar;
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->clear()V

    .line 462
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 463
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 464
    .local v8, "minDate":J
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->clear()V

    .line 465
    const/16 v3, 0x7f4

    const/16 v4, 0xb

    const/16 v5, 0x1f

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 466
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 467
    .local v10, "maxDate":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v21

    .line 468
    .local v21, "currentTimezone":Ljava/util/TimeZone;
    const-string v3, "America/Sao_Paulo"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v19

    .line 469
    .local v19, "brasilia":Ljava/util/TimeZone;
    const-string v3, "America/Santiago"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    .line 471
    .local v23, "santiago":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    :cond_0
    const-wide/32 v4, 0x36ee80

    sub-long/2addr v8, v4

    .line 474
    :cond_1
    new-instance v2, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwDatePickerDialog$OnDateSetListener;IIIJJ)V

    .line 482
    .local v2, "d":Lcom/sec/android/touchwiz/app/TwDatePickerDialog;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 493
    .end local v2    # "d":Lcom/sec/android/touchwiz/app/TwDatePickerDialog;
    .end local v8    # "minDate":J
    .end local v10    # "maxDate":J
    .end local v19    # "brasilia":Ljava/util/TimeZone;
    .end local v21    # "currentTimezone":Ljava/util/TimeZone;
    .end local v22    # "mCalendar":Ljava/util/Calendar;
    .end local v23    # "santiago":Ljava/util/TimeZone;
    :goto_0
    return-object v2

    .line 485
    :pswitch_1
    new-instance v12, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0f0227

    const/16 v3, 0xb

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v3, 0xc

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    move-object/from16 v15, p0

    invoke-direct/range {v12 .. v18}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;ILcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 492
    .local v12, "t":Lcom/sec/android/touchwiz/app/TwTimePickerDialog;
    invoke-virtual {v12}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v2, v12

    .line 493
    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Lcom/sec/android/touchwiz/widget/TwDatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 402
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 409
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 379
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 538
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 539
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 563
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 542
    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 543
    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 545
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 546
    .local v2, "is24Hour":Z
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 548
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0

    .line 549
    .end local v2    # "is24Hour":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 550
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 551
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.irsettings"

    const-string v5, "com.sec.android.app.irsettings.TimeZoneRecommend"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 356
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 367
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->refresRoaming()V

    .line 371
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 435
    const-string v2, "auto_time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 437
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_time_zone"

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 453
    .end local v0    # "autoEnabled":Z
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "autoEnabled":Z
    :cond_1
    move v2, v4

    .line 437
    goto :goto_0

    :cond_2
    move v3, v4

    .line 439
    goto :goto_1

    .line 442
    .end local v0    # "autoEnabled":Z
    :cond_3
    const-string v2, "auto_zone"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 444
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time_zone"

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_5

    :goto_4
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 444
    goto :goto_3

    :cond_5
    move v3, v4

    .line 446
    goto :goto_4

    .line 450
    .end local v1    # "autoZoneEnabled":Z
    :cond_6
    const-string v2, "24 hour"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/DateTimeSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onTimeSet(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 417
    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 423
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 424
    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public refresRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 879
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 882
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 883
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v0

    if-nez v0, :cond_3

    .line 888
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 889
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 890
    const-string v0, "DateTimeSettings"

    const-string v1, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 907
    :cond_2
    :goto_1
    return-void

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 893
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 894
    const-string v0, "DateTimeSettings"

    const-string v1, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 903
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method showTimeDisplaySchemeDialog()V
    .locals 3

    .prologue
    .line 567
    const v1, 0x7f0e13ee

    invoke-static {v1}, Lcom/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    .line 568
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .locals 6

    .prologue
    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, "tzBlocked":Z
    const/4 v0, 0x0

    .line 824
    .local v0, "offset":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 825
    .local v2, "zone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    .line 826
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 829
    const/4 v1, 0x1

    .line 834
    :goto_0
    return v1

    .line 831
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timeZoneRcmndAvail()Z
    .locals 14

    .prologue
    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, "chinaArea":Z
    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "opNumCdma":Ljava/lang/String;
    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 747
    .local v5, "opNumGsm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 748
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    .line 749
    .local v9, "slot1GsmActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    .line 751
    .local v10, "slot2GsmActive":Z
    const/4 v4, 0x0

    .local v4, "opNumCdmaInt":I
    const/4 v6, 0x0

    .line 753
    .local v6, "opNumGsmInt":I
    const/4 v8, 0x1

    .line 756
    .local v8, "serviceState":I
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 758
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 759
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 765
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 766
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 768
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 769
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 771
    :cond_2
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1c7

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_4

    .line 772
    :cond_3
    const/4 v1, 0x1

    .line 775
    :cond_4
    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail chinaArea: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdma SS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdmaActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot1GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot2GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail UserHandle.myUserId(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_5

    .line 779
    const/4 v11, 0x1

    .line 785
    :goto_1
    return v11

    .line 761
    :catch_0
    move-exception v2

    .line 762
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 782
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    if-nez v0, :cond_7

    if-nez v9, :cond_6

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 783
    :cond_6
    const/4 v11, 0x1

    goto :goto_1

    .line 785
    :cond_7
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public timeZoneRcmndBlocked()Z
    .locals 6

    .prologue
    .line 790
    const/4 v2, 0x0

    .line 791
    .local v2, "timezoneRcmndBlocked":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 792
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    .line 793
    .local v1, "gsm2Active":Z
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked cdmaActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsm2Active : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked UserHandle.myUserId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 797
    :cond_1
    const/4 v2, 0x1

    .line 800
    :cond_2
    return v2
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 383
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 388
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 395
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 397
    return-void
.end method
