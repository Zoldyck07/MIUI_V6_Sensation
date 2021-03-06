.class public Lmiui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "resourceManager"    # Lmiui/maml/ResourceManager;
    .param p2, "variables"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v6, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    .local v5, "stringFile":Landroid/os/MemoryFile;
    if-eqz p0, :cond_0

    .line 35
    const-string v7, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    .line 36
    if-nez v5, :cond_0

    .line 38
    const-string v7, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    .line 41
    :cond_0
    if-nez v5, :cond_1

    .line 42
    const-string v7, "strings/strings.xml"

    invoke-virtual {p1, v7}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    const-string v7, "LanguageHelper"

    const-string v8, "no available string resources to load."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return v6

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 52
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 53
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 54
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 59
    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    .line 62
    invoke-static {v1, p2}, Lmiui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lmiui/maml/data/Variables;)Z

    move-result v6

    goto :goto_0

    .line 55
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "LanguageHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    throw v6
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lmiui/maml/data/Variables;)Z
    .locals 10
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1, "variables"    # Lmiui/maml/data/Variables;

    .prologue
    const/4 v8, 0x0

    .line 76
    const/4 v3, 0x1

    .line 77
    .local v3, "standardFormat":Z
    const-string v9, "resources"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 78
    .local v2, "rootsList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_1

    .line 79
    const-string v9, "strings"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-gtz v9, :cond_0

    .line 97
    :goto_0
    return v8

    .line 83
    :cond_0
    const/4 v3, 0x0

    .line 87
    :cond_1
    invoke-interface {v2, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 88
    .local v1, "root":Lorg/w3c/dom/Element;
    const-string v8, "string"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 89
    .local v5, "stringList":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 90
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 91
    .local v4, "string":Lorg/w3c/dom/Element;
    new-instance v6, Lmiui/maml/util/IndexedStringVariable;

    const-string v8, "name"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 93
    .local v6, "stringVar":Lmiui/maml/util/IndexedStringVariable;
    if-eqz v3, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "value":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6, v7}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    const-string v8, "value"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 97
    .end local v4    # "string":Lorg/w3c/dom/Element;
    .end local v6    # "stringVar":Lmiui/maml/util/IndexedStringVariable;
    :cond_3
    const/4 v8, 0x1

    goto :goto_0
.end method
