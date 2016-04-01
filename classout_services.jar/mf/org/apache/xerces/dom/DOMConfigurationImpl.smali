.class public Lmf/org/apache/xerces/dom/DOMConfigurationImpl;
.super Lmf/org/apache/xerces/util/ParserConfigurationSettings;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected final fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected features:S


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0, v0}, <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 268
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .registers 3
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 277
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .registers 15
    .param p1, "symbolTable"    # Lmf/org/apache/xerces/util/SymbolTable;
    .param p2, "parentSettings"    # Lmf/org/apache/xerces/xni/parser/XMLComponentManager;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 288
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;-><init>(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 211
    iput-short v7, p0, features:S

    .line 245
    new-instance v5, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-direct {v5}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v5, p0, fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, fSchemaLocation:Ljava/lang/String;

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, fRecognizedFeatures:Ljava/util/ArrayList;

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, fRecognizedProperties:Ljava/util/ArrayList;

    .line 295
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, fFeatures:Ljava/util/HashMap;

    .line 296
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, fProperties:Ljava/util/HashMap;

    .line 299
    const/16 v5, 0x12

    new-array v2, v5, [Ljava/lang/String;

    .line 300
    const-string/jumbo v5, "http://xml.org/sax/features/validation"

    aput-object v5, v2, v7

    .line 301
    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    aput-object v5, v2, v8

    .line 302
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema"

    aput-object v5, v2, v9

    .line 303
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v5, v2, v10

    .line 304
    const-string/jumbo v5, "http://apache.org/xml/features/validation/dynamic"

    aput-object v5, v2, v11

    const/4 v5, 0x5

    .line 305
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 306
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    .line 307
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    .line 308
    const-string/jumbo v6, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    .line 309
    const-string/jumbo v6, "http://apache.org/xml/features/validate-annotations"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    .line 310
    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    .line 311
    const-string/jumbo v6, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    .line 312
    const-string/jumbo v6, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v6, v2, v5

    const/16 v5, 0xd

    .line 313
    const-string/jumbo v6, "http://apache.org/xml/features/validation/balance-syntax-trees"

    aput-object v6, v2, v5

    const/16 v5, 0xe

    .line 314
    const-string/jumbo v6, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v6, v2, v5

    const/16 v5, 0xf

    .line 315
    const-string/jumbo v6, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v6, v2, v5

    const/16 v5, 0x10

    .line 316
    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    aput-object v6, v2, v5

    const/16 v5, 0x11

    .line 317
    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v6, v2, v5

    .line 319
    .local v2, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v2}, addRecognizedFeatures([Ljava/lang/String;)V

    .line 322
    const-string/jumbo v5, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 323
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 324
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 325
    const-string/jumbo v5, "http://apache.org/xml/features/validation/dynamic"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 326
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 327
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 328
    const-string/jumbo v5, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v5, v8}, setFeature(Ljava/lang/String;Z)V

    .line 329
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p0, v5, v8}, setFeature(Ljava/lang/String;Z)V

    .line 330
    const-string/jumbo v5, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 331
    const-string/jumbo v5, "http://apache.org/xml/features/validate-annotations"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 332
    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 333
    const-string/jumbo v5, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 334
    const-string/jumbo v5, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 335
    const-string/jumbo v5, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 336
    const-string/jumbo v5, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 337
    const-string/jumbo v5, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p0, v5, v8}, setFeature(Ljava/lang/String;Z)V

    .line 338
    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 339
    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p0, v5, v7}, setFeature(Ljava/lang/String;Z)V

    .line 342
    const/16 v5, 0x10

    new-array v3, v5, [Ljava/lang/String;

    .line 343
    const-string/jumbo v5, "http://xml.org/sax/properties/xml-string"

    aput-object v5, v3, v7

    .line 344
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v5, v3, v8

    .line 345
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v5, v3, v9

    .line 346
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v5, v3, v10

    .line 347
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v5, v3, v11

    const/4 v5, 0x5

    .line 348
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    .line 349
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    .line 350
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    .line 351
    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    .line 352
    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v6, v3, v5

    const/16 v5, 0xa

    .line 353
    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v6, v3, v5

    const/16 v5, 0xb

    .line 354
    const-string/jumbo v6, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v6, v3, v5

    const/16 v5, 0xc

    .line 355
    const-string/jumbo v6, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v6, v3, v5

    const/16 v5, 0xd

    .line 356
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    .line 357
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    .line 358
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v6, v3, v5

    .line 360
    .local v3, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v3}, addRecognizedProperties([Ljava/lang/String;)V

    .line 363
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 364
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 365
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x20

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 366
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 367
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x10

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 368
    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x100

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 369
    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x200

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 371
    if-nez p1, :cond_1b6

    .line 372
    new-instance p1, Lmf/org/apache/xerces/util/SymbolTable;

    .end local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    invoke-direct {p1}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    .line 374
    .restart local p1    # "symbolTable":Lmf/org/apache/xerces/util/SymbolTable;
    :cond_1b6
    iput-object p1, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    .line 376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, fComponents:Ljava/util/ArrayList;

    .line 378
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    new-instance v5, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 380
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v6, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v5}, addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 383
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v5

    iput-object v5, p0, fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 384
    const-string/jumbo v5, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v5}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v5

    iput-object v5, p0, fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 385
    iget-object v5, p0, fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v5, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 386
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v6, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    .line 389
    .local v1, "manager":Lmf/org/apache/xerces/impl/XMLEntityManager;
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-virtual {p0, v5, v1}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0, v1}, addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    .line 392
    invoke-virtual {p0}, createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;

    move-result-object v5

    iput-object v5, p0, fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    .line 393
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v6, p0, fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v5

    if-nez v5, :cond_232

    .line 398
    new-instance v4, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    .line 399
    .local v4, "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 400
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 406
    .end local v4    # "xmft":Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;
    :cond_232
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v5

    if-nez v5, :cond_258

    .line 407
    const/4 v4, 0x0

    .line 411
    .local v4, "xmft":Lmf/org/apache/xerces/util/MessageFormatter;
    :try_start_23e
    const-string/jumbo v5, "mf.org.apache.xerces.impl.xs.XSMessageFormatter"

    .line 412
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    .line 411
    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    .line 410
    move-object v0, v5

    check-cast v0, Lmf/org/apache/xerces/util/MessageFormatter;

    move-object v4, v0
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_24e} :catch_262

    .line 416
    :goto_24e
    if-eqz v4, :cond_258

    .line 417
    iget-object v5, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    .line 424
    .end local v4    # "xmft":Lmf/org/apache/xerces/util/MessageFormatter;
    :cond_258
    :try_start_258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p0, v5}, setLocale(Ljava/util/Locale;)V
    :try_end_25f
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_258 .. :try_end_25f} :catch_260

    .line 432
    :goto_25f
    return-void

    .line 426
    :catch_260
    move-exception v5

    goto :goto_25f

    .line 413
    .restart local v4    # "xmft":Lmf/org/apache/xerces/util/MessageFormatter;
    :catch_262
    move-exception v5

    goto :goto_24e
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1208
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 1209
    const-string v2, "FEATURE_NOT_FOUND"

    .line 1210
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1207
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 1200
    const-string v2, "FEATURE_NOT_SUPPORTED"

    .line 1201
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1198
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    .line 1218
    const-string v2, "TYPE_MISMATCH_ERR"

    .line 1219
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1216
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .registers 5
    .param p1, "component"    # Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .prologue
    .line 1164
    iget-object v2, p0, fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1177
    :goto_8
    return-void

    .line 1167
    :cond_9
    iget-object v2, p0, fComponents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "recognizedFeatures":[Ljava/lang/String;
    invoke-virtual {p0, v0}, addRecognizedFeatures([Ljava/lang/String;)V

    .line 1174
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1175
    .local v1, "recognizedProperties":[Ljava/lang/String;
    invoke-virtual {p0, v1}, addRecognizedProperties([Ljava/lang/String;)V

    goto :goto_8
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 969
    if-nez p2, :cond_5

    .line 1042
    :cond_4
    :goto_4
    return v1

    .line 978
    :cond_5
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_b0

    .line 982
    const-string v2, "comments"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 983
    const-string/jumbo v2, "datatype-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 984
    const-string v2, "cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 985
    const-string/jumbo v2, "entities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 986
    const-string/jumbo v2, "split-cdata-sections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 987
    const-string/jumbo v2, "namespaces"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 988
    const-string/jumbo v2, "validate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 989
    const-string/jumbo v2, "well-formed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 990
    const-string/jumbo v2, "infoset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 991
    const-string/jumbo v2, "namespace-declarations"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 996
    const-string/jumbo v2, "normalize-characters"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 997
    const-string v2, "canonical-form"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 998
    const-string/jumbo v2, "validate-if-schema"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 999
    const-string v2, "check-character-normalization"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1001
    :cond_83
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :goto_8b
    move v1, v0

    goto/16 :goto_4

    :cond_8e
    move v0, v1

    goto :goto_8b

    .line 1003
    :cond_90
    const-string/jumbo v2, "element-content-whitespace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 1004
    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1006
    :cond_a2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    :cond_ad
    move v1, v0

    .line 1009
    goto/16 :goto_4

    .line 1012
    :cond_b0
    const-string/jumbo v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 1013
    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1015
    :cond_c0
    const-string/jumbo v2, "resource-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1016
    instance-of v2, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1018
    :cond_d0
    const-string/jumbo v2, "schema-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1019
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1021
    :cond_e0
    const-string/jumbo v2, "schema-type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 1024
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_fd

    .line 1025
    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_fd
    move v1, v0

    goto/16 :goto_4

    .line 1027
    :cond_100
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 1028
    instance-of v2, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1030
    :cond_110
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_120

    .line 1032
    instance-of v2, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1034
    :cond_120
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 1035
    instance-of v2, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    .line 1037
    :cond_130
    const-string/jumbo v2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 1038
    instance-of v2, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v2, :cond_4

    move v1, v0

    goto/16 :goto_4

    :cond_140
    move v1, v0

    .line 1042
    goto/16 :goto_4
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .registers 6
    .param p1, "propertyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 1132
    const-string/jumbo v2, "http://xml.org/sax/properties/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "http://xml.org/sax/properties/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 1145
    .local v0, "suffixLength":I
    const-string/jumbo v2, "xml-string"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2f

    .line 1146
    const-string/jumbo v2, "xml-string"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1150
    const/4 v1, 0x1

    .line 1151
    .local v1, "type":S
    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1156
    .end local v0    # "suffixLength":I
    .end local v1    # "type":S
    :cond_2f
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method protected createValidationManager()Lmf/org/apache/xerces/impl/validation/ValidationManager;
    .registers 2

    .prologue
    .line 1180
    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    return-object v0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .registers 2

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 583
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 640
    iget-object v0, p0, fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 874
    const-string v1, "comments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 875
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_11

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 947
    :goto_10
    return-object v1

    .line 875
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 877
    :cond_14
    const-string/jumbo v1, "namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 878
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 880
    :cond_29
    const-string/jumbo v1, "datatype-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 882
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3b

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_3b
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 884
    :cond_3e
    const-string v1, "cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 885
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_4f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 887
    :cond_52
    const-string/jumbo v1, "entities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 888
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_64

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_64
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 890
    :cond_67
    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 891
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_79

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_79
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 893
    :cond_7c
    const-string/jumbo v1, "validate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 894
    iget-short v1, p0, features:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_8e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 896
    :cond_91
    const-string/jumbo v1, "well-formed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 897
    iget-short v1, p0, features:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_a4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    :cond_a4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 899
    :cond_a8
    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 900
    iget-short v1, p0, features:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_bb

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    :cond_bb
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 902
    :cond_bf
    const-string/jumbo v1, "infoset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 903
    iget-short v1, p0, features:S

    and-int/lit16 v1, v1, 0x32f

    const/16 v2, 0x321

    if-ne v1, v2, :cond_d4

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    :cond_d4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 905
    :cond_d8
    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 906
    const-string v1, "canonical-form"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 907
    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 908
    const-string v1, "check-character-normalization"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 910
    :cond_fa
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 912
    :cond_fe
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 913
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 915
    :cond_10b
    const-string/jumbo v1, "psvi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_122

    .line 916
    iget-short v1, p0, features:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_11e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    :cond_11e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 918
    :cond_122
    const-string/jumbo v1, "element-content-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 919
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 921
    :cond_12f
    const-string/jumbo v1, "error-handler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 922
    iget-object v1, p0, fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    goto/16 :goto_10

    .line 924
    :cond_140
    const-string/jumbo v1, "resource-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 925
    invoke-virtual {p0}, getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    .line 926
    .local v0, "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    if-eqz v0, :cond_15b

    instance-of v1, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v1, :cond_15b

    .line 927
    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    .end local v0    # "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;

    move-result-object v1

    goto/16 :goto_10

    .line 929
    .restart local v0    # "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_15b
    const/4 v1, 0x0

    goto/16 :goto_10

    .line 931
    .end local v0    # "entityResolver":Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :cond_15e
    const-string/jumbo v1, "schema-type"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 932
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {p0, v1}, getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_10

    .line 934
    :cond_170
    const-string/jumbo v1, "schema-location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 935
    iget-object v1, p0, fSchemaLocation:Ljava/lang/String;

    goto/16 :goto_10

    .line 937
    :cond_17d
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 938
    invoke-virtual {p0}, getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    goto/16 :goto_10

    .line 940
    :cond_18c
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 941
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p0, v1}, getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_10

    .line 943
    :cond_19e
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 944
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p0, v1}, getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_10

    .line 946
    :cond_1b0
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 947
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v1}, getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_10

    .line 950
    :cond_1c2
    invoke-static {p1}, newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v1

    throw v1
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .registers 3

    .prologue
    .line 1056
    iget-object v1, p0, fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_9c

    .line 1057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v0, "parameters":Ljava/util/ArrayList;
    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    const-string/jumbo v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    const-string/jumbo v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1066
    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    const-string/jumbo v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    const-string/jumbo v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    const-string/jumbo v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    const-string/jumbo v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    const-string/jumbo v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    const-string/jumbo v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    const-string/jumbo v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    const-string/jumbo v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    const-string/jumbo v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    const-string/jumbo v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    .line 1096
    .end local v0    # "parameters":Ljava/util/ArrayList;
    :cond_9c
    iget-object v1, p0, fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .registers 2
    .param p1, "inputSource"    # Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method protected reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 1108
    iget-object v3, p0, fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v3, :cond_9

    .line 1109
    iget-object v3, p0, fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    .line 1111
    :cond_9
    iget-object v3, p0, fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1112
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-lt v2, v1, :cond_13

    .line 1117
    return-void

    .line 1113
    :cond_13
    iget-object v3, p0, fComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    .line 1114
    .local v0, "c":Lmf/org/apache/xerces/xni/parser/XMLComponent;
    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    .line 1112
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .registers 2
    .param p1, "handler"    # Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    .prologue
    .line 505
    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .registers 2
    .param p1, "dtdHandler"    # Lmf/org/apache/xerces/xni/XMLDTDHandler;

    .prologue
    .line 490
    return-void
.end method

.method protected final setDTDValidatorFactory(Ljava/lang/String;)V
    .registers 4
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1184
    const-string v0, "1.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1185
    iget-object v0, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_1a

    .line 1186
    iget-object v0, p0, fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1187
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1194
    :cond_1a
    :goto_1a
    return-void

    .line 1190
    :cond_1b
    iget-object v0, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_1a

    .line 1191
    iget-object v0, p0, fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    .line 1192
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .registers 2
    .param p1, "documentHandler"    # Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .prologue
    .line 475
    iput-object p1, p0, fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    .line 476
    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .registers 4
    .param p1, "resolver"    # Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .prologue
    .line 520
    iget-object v0, p0, fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V
    .registers 4
    .param p1, "errorHandler"    # Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    .prologue
    .line 553
    if-eqz p1, :cond_a

    .line 554
    iget-object v0, p0, fProperties:Ljava/util/HashMap;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_a
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "featureId"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    .line 608
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 633
    iput-object p1, p0, fLocale:Ljava/util/Locale;

    .line 634
    iget-object v0, p0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    .line 636
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 648
    const/4 v1, 0x1

    .line 652
    .local v1, "found":Z
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_1e

    move-object v5, p2

    .line 653
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 655
    .local v3, "state":Z
    const-string v5, "comments"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 656
    if-eqz v3, :cond_41

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x20

    :goto_1b
    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 734
    .end local v3    # "state":Z
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_24

    instance-of v5, p2, Ljava/lang/Boolean;

    if-nez v5, :cond_40

    .line 735
    :cond_24
    const/4 v1, 0x1

    .line 737
    const-string/jumbo v5, "error-handler"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a4

    .line 738
    instance-of v5, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v5, :cond_34

    if-nez p2, :cond_19f

    .line 739
    :cond_34
    iget-object v5, p0, fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->setErrorHandler(Lmf/org/w3c/dom/DOMErrorHandler;)V

    .line 740
    iget-object v5, p0, fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {p0, v5}, setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    .line 862
    :cond_40
    :goto_40
    return-void

    .line 656
    .restart local v3    # "state":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_41
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x21

    goto :goto_1b

    .line 658
    :cond_46
    const-string/jumbo v5, "datatype-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 659
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v5, v3}, setFeature(Ljava/lang/String;Z)V

    .line 661
    if-eqz v3, :cond_68

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x2

    :goto_5b
    int-to-short v5, v5

    .line 660
    iput-short v5, p0, features:S

    .line 662
    if-eqz v3, :cond_1e

    .line 663
    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x40

    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto :goto_1e

    .line 661
    :cond_68
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x3

    goto :goto_5b

    .line 666
    :cond_6d
    const-string/jumbo v5, "namespaces"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 667
    if-eqz v3, :cond_80

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x1

    :goto_7c
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto :goto_1e

    :cond_80
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x2

    goto :goto_7c

    .line 669
    :cond_85
    const-string v5, "cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 670
    if-eqz v3, :cond_97

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x8

    :goto_93
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto :goto_1e

    :cond_97
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x9

    goto :goto_93

    .line 672
    :cond_9c
    const-string/jumbo v5, "entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 673
    if-eqz v3, :cond_b0

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x4

    :goto_ab
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_b0
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x5

    goto :goto_ab

    .line 675
    :cond_b5
    const-string/jumbo v5, "split-cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 676
    if-eqz v3, :cond_c9

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x10

    :goto_c4
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_c9
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x11

    goto :goto_c4

    .line 678
    :cond_ce
    const-string/jumbo v5, "validate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 679
    if-eqz v3, :cond_e2

    iget-short v5, p0, features:S

    or-int/lit8 v5, v5, 0x40

    :goto_dd
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_e2
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0x41

    goto :goto_dd

    .line 681
    :cond_e7
    const-string/jumbo v5, "well-formed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 682
    if-eqz v3, :cond_fb

    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x100

    :goto_f6
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_fb
    iget-short v5, p0, features:S

    and-int/lit16 v5, v5, -0x101

    goto :goto_f6

    .line 684
    :cond_100
    const-string/jumbo v5, "namespace-declarations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 685
    if-eqz v3, :cond_114

    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x200

    :goto_10f
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_114
    iget-short v5, p0, features:S

    and-int/lit16 v5, v5, -0x201

    goto :goto_10f

    .line 687
    :cond_119
    const-string/jumbo v5, "infoset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 689
    if-eqz v3, :cond_1e

    .line 690
    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x321

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 691
    iget-short v5, p0, features:S

    and-int/lit8 v5, v5, -0xf

    int-to-short v5, v5

    iput-short v5, p0, features:S

    .line 692
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-virtual {p0, v5, v6}, setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_1e

    .line 695
    :cond_13a
    const-string/jumbo v5, "normalize-characters"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15c

    .line 696
    const-string v5, "canonical-form"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15c

    .line 697
    const-string/jumbo v5, "validate-if-schema"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15c

    .line 698
    const-string v5, "check-character-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_163

    .line 700
    :cond_15c
    if-eqz v3, :cond_1e

    .line 701
    invoke-static {p1}, newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 704
    :cond_163
    const-string/jumbo v5, "element-content-whitespace"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 705
    if-nez v3, :cond_1e

    .line 706
    invoke-static {p1}, newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 709
    :cond_173
    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_183

    .line 713
    if-nez v3, :cond_1e

    .line 714
    invoke-static {p1}, newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 717
    :cond_183
    const-string/jumbo v5, "psvi"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19c

    .line 718
    if-eqz v3, :cond_197

    iget-short v5, p0, features:S

    or-int/lit16 v5, v5, 0x80

    :goto_192
    int-to-short v5, v5

    iput-short v5, p0, features:S

    goto/16 :goto_1e

    :cond_197
    iget-short v5, p0, features:S

    and-int/lit16 v5, v5, -0x81

    goto :goto_192

    .line 721
    :cond_19c
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 743
    .end local v3    # "state":Z
    :cond_19f
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 746
    :cond_1a4
    const-string/jumbo v5, "resource-resolver"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c7

    .line 747
    instance-of v5, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v5, :cond_1b3

    if-nez p2, :cond_1c2

    .line 749
    :cond_1b3
    :try_start_1b3
    new-instance v5, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {v5, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {p0, v5}, setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_1bd
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1b3 .. :try_end_1bd} :catch_1bf

    goto/16 :goto_40

    .line 751
    :catch_1bf
    move-exception v5

    goto/16 :goto_40

    .line 754
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1c2
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 757
    :cond_1c7
    const-string/jumbo v5, "schema-location"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23d

    .line 758
    instance-of v5, p2, Ljava/lang/String;

    if-nez v5, :cond_1d6

    if-nez p2, :cond_238

    .line 760
    :cond_1d6
    if-nez p2, :cond_1e7

    .line 761
    const/4 v5, 0x0

    :try_start_1d9
    iput-object v5, p0, fSchemaLocation:Ljava/lang/String;

    .line 763
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 764
    const/4 v6, 0x0

    .line 762
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 788
    .end local p2    # "value":Ljava/lang/Object;
    :catch_1e4
    move-exception v5

    goto/16 :goto_40

    .line 767
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1e7
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    iput-object v5, p0, fSchemaLocation:Ljava/lang/String;

    .line 770
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, p0, fSchemaLocation:Ljava/lang/String;

    const-string v6, " \n\t\r"

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .local v4, "t":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_228

    .line 772
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v2, "locations":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :goto_208
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_220

    .line 778
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 779
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 777
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 775
    :cond_220
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_208

    .line 783
    .end local v2    # "locations":Ljava/util/ArrayList;
    :cond_228
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    .line 784
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    aput-object p2, v6, v7

    .line 782
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_236
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1d9 .. :try_end_236} :catch_1e4

    goto/16 :goto_40

    .line 791
    .end local v4    # "t":Ljava/util/StringTokenizer;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_238
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 794
    :cond_23d
    const-string/jumbo v5, "schema-type"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_283

    .line 795
    instance-of v5, p2, Ljava/lang/String;

    if-nez v5, :cond_24c

    if-nez p2, :cond_27e

    .line 797
    :cond_24c
    if-nez p2, :cond_25a

    .line 799
    :try_start_24e
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 800
    const/4 v6, 0x0

    .line 798
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 814
    :catch_257
    move-exception v5

    goto/16 :goto_40

    .line 802
    :cond_25a
    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26c

    .line 805
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 806
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    .line 804
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 808
    :cond_26c
    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 810
    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    .line 811
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    .line 810
    invoke-virtual {p0, v5, v6}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_27c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_24e .. :try_end_27c} :catch_257

    goto/16 :goto_40

    .line 817
    :cond_27e
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 820
    :cond_283
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a1

    .line 821
    instance-of v5, p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v5, :cond_292

    if-nez p2, :cond_29c

    .line 823
    :cond_292
    :try_start_292
    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_297
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_292 .. :try_end_297} :catch_299

    goto/16 :goto_40

    .line 825
    :catch_299
    move-exception v5

    goto/16 :goto_40

    .line 828
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_29c
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 831
    :cond_2a1
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2bb

    .line 833
    instance-of v5, p2, Lmf/org/apache/xerces/util/SymbolTable;

    if-eqz v5, :cond_2b6

    .line 834
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p0, v5, p2}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 837
    :cond_2b6
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 840
    :cond_2bb
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d7

    .line 841
    instance-of v5, p2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v5, :cond_2ca

    if-nez p2, :cond_2d2

    .line 842
    :cond_2ca
    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p0, v5, p2}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 845
    :cond_2d2
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 848
    :cond_2d7
    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f3

    .line 849
    instance-of v5, p2, Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v5, :cond_2e6

    if-nez p2, :cond_2ee

    .line 850
    :cond_2e6
    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, v5, p2}, setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_40

    .line 853
    :cond_2ee
    invoke-static {p1}, newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5

    .line 859
    :cond_2f3
    invoke-static {p1}, newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v5

    throw v5
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "propertyId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 622
    return-void
.end method
