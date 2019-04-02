.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static final CODES_PREFIX:Ljava/lang/String; = "http://www.slf4j.org/codes.html"

.field static DETECT_LOGGER_NAME_MISMATCH:Z = false

.field static final DETECT_LOGGER_NAME_MISMATCH_PROPERTY:Ljava/lang/String; = "slf4j.detectLoggerNameMismatch"

.field static final FAILED_INITIALIZATION:I = 0x2

.field static INITIALIZATION_STATE:I = 0x0

.field static final LOGGER_NAME_MISMATCH_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#loggerNameMismatch"

.field static final MULTIPLE_BINDINGS_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#multiple_bindings"

.field static NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory; = null

.field static final NOP_FALLBACK_INITIALIZATION:I = 0x4

.field static final NO_STATICLOGGERBINDER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#StaticLoggerBinder"

.field static final NULL_LF_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#null_LF"

.field static final ONGOING_INITIALIZATION:I = 0x1

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String; = null

.field static final SUBSTITUTE_LOGGER_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#substituteLogger"

.field static final SUCCESSFUL_INITIALIZATION:I = 0x3

.field static TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory; = null

.field static final UNINITIALIZED:I = 0x0

.field static final UNSUCCESSFUL_INIT_MSG:Ljava/lang/String; = "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final UNSUCCESSFUL_INIT_URL:Ljava/lang/String; = "http://www.slf4j.org/codes.html#unsuccessfulInit"

.field static final VERSION_MISMATCH:Ljava/lang/String; = "http://www.slf4j.org/codes.html#version_mismatch"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    sput v2, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 83
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 84
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 88
    const-string v0, "slf4j.detectLoggerNameMismatch"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.6"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "1.7"

    aput-object v2, v0, v1

    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    .line 224
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    sput-object v0, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method private static final bind()V
    .locals 7

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;

    move-result-object v4

    .line 139
    .local v4, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->reportMultipleBindingAmbiguity(Ljava/util/Set;)V

    .line 141
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 142
    const/4 v5, 0x3

    sput v5, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 143
    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->reportActualBinding(Ljava/util/Set;)V

    .line 144
    invoke-static {}, Lorg/slf4j/LoggerFactory;->fixSubstitutedLoggers()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 169
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "ncde":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const/4 v5, 0x4

    sput v5, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 149
    const-string v5, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 150
    const-string v5, "Defaulting to no-operation (NOP) logger implementation"

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 151
    const-string v5, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 154
    throw v2

    .line 156
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "ncde":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v3

    .line 157
    .local v3, "nsme":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1    # "msg":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v5, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 159
    const/4 v5, 0x2

    sput v5, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 160
    const-string v5, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 161
    const-string v5, "Your binding is version 1.5.5 or earlier."

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 162
    const-string v5, "Upgrade your binding to version 1.6.x."

    invoke-static {v5}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 164
    :cond_1
    throw v3

    .line 165
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 167
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected initialization failure"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method static failedBinding(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    const/4 v0, 0x2

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 173
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    invoke-static {v0, p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method private static findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 231
    .local v4, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    :try_start_0
    const-class v5, Lorg/slf4j/LoggerFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 233
    .local v1, "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    .line 234
    sget-object v5, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 238
    .local v3, "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 240
    .local v2, "path":Ljava/net/URL;
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v1    # "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    .end local v2    # "path":Ljava/net/URL;
    .end local v3    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ioe":Ljava/io/IOException;
    const-string v5, "Error getting resources from path"

    invoke-static {v5, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    return-object v4

    .line 236
    .restart local v1    # "loggerFactoryClassLoader":Ljava/lang/ClassLoader;
    :cond_1
    :try_start_1
    sget-object v5, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "paths":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    goto :goto_0
.end method

.method private static final fixSubstitutedLoggers()V
    .locals 4

    .prologue
    .line 177
    sget-object v3, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggers()Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "loggers":Ljava/util/List;, "Ljava/util/List<Lorg/slf4j/helpers/SubstituteLogger;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v3, "The following set of substitute loggers may have been accessed"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 184
    const-string v3, "during the initialization phase. Logging calls during this"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 185
    const-string v3, "phase were not honored. However, subsequent logging calls to these"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 186
    const-string v3, "loggers will work as normally expected."

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 187
    const-string v3, "See also http://www.slf4j.org/codes.html#substituteLogger"

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/helpers/SubstituteLogger;

    .line 189
    .local v2, "subLogger":Lorg/slf4j/helpers/SubstituteLogger;
    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/slf4j/helpers/SubstituteLogger;->setDelegate(Lorg/slf4j/Logger;)V

    .line 190
    invoke-virtual {v2}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v2    # "subLogger":Lorg/slf4j/helpers/SubstituteLogger;
    :cond_1
    sget-object v3, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->clear()V

    goto :goto_0
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 2

    .prologue
    .line 329
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 331
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    .line 333
    :cond_0
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    packed-switch v0, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :pswitch_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 337
    :pswitch_1
    sget-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    goto :goto_0

    .line 339
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_3
    sget-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 305
    .local v1, "logger":Lorg/slf4j/Logger;
    sget-boolean v2, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    if-eqz v2, :cond_0

    .line 306
    invoke-static {}, Lorg/slf4j/helpers/Util;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    .line 307
    .local v0, "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lorg/slf4j/LoggerFactory;->nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    const-string v2, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 310
    const-string v2, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 313
    .end local v0    # "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 284
    .local v0, "iLoggerFactory":Lorg/slf4j/ILoggerFactory;
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v1

    return-object v1
.end method

.method private static isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    const/4 v0, 0x1

    .line 249
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 127
    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    const-string v2, "org/slf4j/impl/StaticLoggerBinder"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string v2, "org.slf4j.impl.StaticLoggerBinder"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 132
    goto :goto_0
.end method

.method private static nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "autoComputedCallingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final performInitialization()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    .line 121
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 122
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    .line 124
    :cond_0
    return-void
.end method

.method private static reportActualBinding(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actual binding is of type ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 273
    :cond_0
    return-void
.end method

.method private static reportMultipleBindingAmbiguity(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "staticLoggerBinderPathSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/URL;>;"
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    const-string v2, "Class path contains multiple SLF4J bindings."

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 260
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URL;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 263
    .local v1, "path":Ljava/net/URL;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found binding in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v1    # "path":Ljava/net/URL;
    :cond_0
    const-string v2, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 267
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/URL;>;"
    :cond_1
    return-void
.end method

.method static reset()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 116
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->TEMP_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 117
    return-void
.end method

.method private static final versionSanityCheck()V
    .locals 6

    .prologue
    .line 198
    :try_start_0
    sget-object v3, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 200
    .local v3, "requested":Ljava/lang/String;
    const/4 v2, 0x0

    .line 201
    .local v2, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 202
    sget-object v4, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    const/4 v2, 0x1

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    if-nez v2, :cond_2

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by your slf4j binding is not compatible with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 209
    const-string v4, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    invoke-static {v4}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_2
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Throwable;
    const-string v4, "Unexpected problem occured during version sanity check"

    invoke-static {v4, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 211
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
