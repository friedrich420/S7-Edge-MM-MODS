.class public Lcom/sun/org/apache/xml/internal/security/utils/I18n;
.super Ljava/lang/Object;


# static fields
.field public static final NOT_INITIALIZED_MSG:Ljava/lang/String; = "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

.field protected static _countryCode:Ljava/lang/String;

.field protected static _languageCode:Ljava/lang/String;

.field protected static alreadyInitialized:Z

.field public static defaultCountryCode:Ljava/lang/String;

.field public static defaultLanguageCode:Ljava/lang/String;

.field protected static resourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, alreadyInitialized:Z

    sput-object v1, _languageCode:Ljava/lang/String;

    sput-object v1, _countryCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No message with ID \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" found in resource bundle \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_34
    const-string v0, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    goto :goto_6
.end method

.method public static getExceptionMessage(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No message with ID \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" found in resource bundle \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\". Original Exception was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_5c
    const-string v0, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    goto :goto_14
.end method

.method public static getExceptionMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, resourceBundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/Init;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No message with ID \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" found in resource bundle \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_38
    const-string v0, "You must initialize the xml-security library correctly before you use it. Call the static method \"com.sun.org.apache.xml.internal.security.Init.init();\" to do that before you use any functionality from that library."

    goto :goto_a
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p0, defaultLanguageCode:Ljava/lang/String;

    sget-object v0, defaultLanguageCode:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, defaultLanguageCode:Ljava/lang/String;

    :cond_10
    sput-object p1, defaultCountryCode:Ljava/lang/String;

    sget-object v0, defaultCountryCode:Ljava/lang/String;

    if-nez v0, :cond_20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, defaultCountryCode:Ljava/lang/String;

    :cond_20
    sget-object v0, defaultLanguageCode:Ljava/lang/String;

    sget-object v1, defaultCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, initLocale(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initLocale(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, alreadyInitialized:Z

    if-eqz v0, :cond_15

    sget-object v0, _languageCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, _countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    if-eqz p0, :cond_3b

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    sput-object p0, _languageCode:Ljava/lang/String;

    sput-object p1, _countryCode:Ljava/lang/String;

    :goto_29
    const-string v0, "com/sun/org/apache/xml/internal/security/resource/xmlsecurity"

    new-instance v1, Ljava/util/Locale;

    sget-object v2, _languageCode:Ljava/lang/String;

    sget-object v3, _countryCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_14

    :cond_3b
    sget-object v0, defaultCountryCode:Ljava/lang/String;

    sput-object v0, _countryCode:Ljava/lang/String;

    sget-object v0, defaultLanguageCode:Ljava/lang/String;

    sput-object v0, _languageCode:Ljava/lang/String;

    goto :goto_29
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, getExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, getExceptionMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
