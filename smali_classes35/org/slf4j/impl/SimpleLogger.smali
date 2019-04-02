.class public Lorg/slf4j/impl/SimpleLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "SimpleLogger.java"


# static fields
.field private static final CONFIGURATION_FILE:Ljava/lang/String; = "simplelogger.properties"

.field private static DATE_FORMATTER:Ljava/text/DateFormat; = null

.field public static final DATE_TIME_FORMAT_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.dateTimeFormat"

.field private static DATE_TIME_FORMAT_STR:Ljava/lang/String; = null

.field private static DEFAULT_LOG_LEVEL:I = 0x0

.field public static final DEFAULT_LOG_LEVEL_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.defaultLogLevel"

.field private static INITIALIZED:Z = false

.field private static LEVEL_IN_BRACKETS:Z = false

.field public static final LEVEL_IN_BRACKETS_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.levelInBrackets"

.field private static LOG_FILE:Ljava/lang/String; = null

.field public static final LOG_FILE_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.logFile"

.field public static final LOG_KEY_PREFIX:Ljava/lang/String; = "org.slf4j.simpleLogger.log."

.field private static final LOG_LEVEL_DEBUG:I = 0xa

.field private static final LOG_LEVEL_ERROR:I = 0x28

.field private static final LOG_LEVEL_INFO:I = 0x14

.field private static final LOG_LEVEL_TRACE:I = 0x0

.field private static final LOG_LEVEL_WARN:I = 0x1e

.field private static SHOW_DATE_TIME:Z = false

.field public static final SHOW_DATE_TIME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showDateTime"

.field private static SHOW_LOG_NAME:Z = false

.field public static final SHOW_LOG_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showLogName"

.field private static SHOW_SHORT_LOG_NAME:Z = false

.field public static final SHOW_SHORT_LOG_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showShortLogName"

.field private static SHOW_THREAD_NAME:Z = false

.field public static final SHOW_THREAD_NAME_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.showThreadName"

.field private static final SIMPLE_LOGGER_PROPS:Ljava/util/Properties;

.field private static START_TIME:J = 0x0L

.field public static final SYSTEM_PREFIX:Ljava/lang/String; = "org.slf4j.simpleLogger."

.field private static TARGET_STREAM:Ljava/io/PrintStream; = null

.field private static WARN_LEVEL_STRING:Ljava/lang/String; = null

.field public static final WARN_LEVEL_STRING_KEY:Ljava/lang/String; = "org.slf4j.simpleLogger.warnLevelString"

.field private static final serialVersionUID:J = -0x8c81e24d6789094L


# instance fields
.field protected currentLogLevel:I

.field private transient shortLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/slf4j/impl/SimpleLogger;->START_TIME:J

    .line 124
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->SIMPLE_LOGGER_PROPS:Ljava/util/Properties;

    .line 132
    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    .line 134
    const/16 v0, 0x14

    sput v0, Lorg/slf4j/impl/SimpleLogger;->DEFAULT_LOG_LEVEL:I

    .line 135
    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_DATE_TIME:Z

    .line 136
    sput-object v3, Lorg/slf4j/impl/SimpleLogger;->DATE_TIME_FORMAT_STR:Ljava/lang/String;

    .line 137
    sput-object v3, Lorg/slf4j/impl/SimpleLogger;->DATE_FORMATTER:Ljava/text/DateFormat;

    .line 138
    sput-boolean v4, Lorg/slf4j/impl/SimpleLogger;->SHOW_THREAD_NAME:Z

    .line 139
    sput-boolean v4, Lorg/slf4j/impl/SimpleLogger;->SHOW_LOG_NAME:Z

    .line 140
    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_SHORT_LOG_NAME:Z

    .line 141
    const-string v0, "System.err"

    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->LOG_FILE:Ljava/lang/String;

    .line 142
    sput-object v3, Lorg/slf4j/impl/SimpleLogger;->TARGET_STREAM:Ljava/io/PrintStream;

    .line 143
    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->LEVEL_IN_BRACKETS:Z

    .line 144
    const-string v0, "WARN"

    sput-object v0, Lorg/slf4j/impl/SimpleLogger;->WARN_LEVEL_STRING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 252
    const/16 v1, 0x14

    iput v1, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    .line 254
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    .line 261
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    if-nez v1, :cond_0

    .line 262
    invoke-static {}, Lorg/slf4j/impl/SimpleLogger;->init()V

    .line 264
    :cond_0
    iput-object p1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lorg/slf4j/impl/SimpleLogger;->recursivelyComputeLevelString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "levelString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 268
    invoke-static {v0}, Lorg/slf4j/impl/SimpleLogger;->stringToLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_1
    sget v1, Lorg/slf4j/impl/SimpleLogger;->DEFAULT_LOG_LEVEL:I

    iput v1, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    goto :goto_0
.end method

.method private computeShortName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static computeTargetStream(Ljava/lang/String;)Ljava/io/PrintStream;
    .locals 5
    .param p0, "logFile"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v3, "System.err"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 224
    :goto_0
    return-object v2

    .line 215
    :cond_0
    const-string v3, "System.out"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_0

    .line 219
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .local v2, "printStream":Ljava/io/PrintStream;
    goto :goto_0

    .line 222
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "printStream":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Defaulting to System.err"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {p2, p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 410
    .local v0, "tp":Lorg/slf4j/helpers/FormattingTuple;
    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-static {p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v0

    .line 425
    .local v0, "tp":Lorg/slf4j/helpers/FormattingTuple;
    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 177
    invoke-static {p0}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private getFormattedDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 387
    .local v1, "now":Ljava/util/Date;
    sget-object v3, Lorg/slf4j/impl/SimpleLogger;->DATE_FORMATTER:Ljava/text/DateFormat;

    monitor-enter v3

    .line 388
    :try_start_0
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->DATE_FORMATTER:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "dateText":Ljava/lang/String;
    monitor-exit v3

    .line 390
    return-object v0

    .line 389
    .end local v0    # "dateText":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "prop":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lorg/slf4j/impl/SimpleLogger;->SIMPLE_LOGGER_PROPS:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 165
    .restart local v0    # "prop":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "prop":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method static init()V
    .locals 4

    .prologue
    .line 185
    const/4 v2, 0x1

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->INITIALIZED:Z

    .line 186
    invoke-static {}, Lorg/slf4j/impl/SimpleLogger;->loadProperties()V

    .line 188
    const-string v2, "org.slf4j.simpleLogger.defaultLogLevel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "defaultLogLevelString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 190
    invoke-static {v0}, Lorg/slf4j/impl/SimpleLogger;->stringToLevel(Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/slf4j/impl/SimpleLogger;->DEFAULT_LOG_LEVEL:I

    .line 192
    :cond_0
    const-string v2, "org.slf4j.simpleLogger.showLogName"

    sget-boolean v3, Lorg/slf4j/impl/SimpleLogger;->SHOW_LOG_NAME:Z

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_LOG_NAME:Z

    .line 193
    const-string v2, "org.slf4j.simpleLogger.showShortLogName"

    sget-boolean v3, Lorg/slf4j/impl/SimpleLogger;->SHOW_SHORT_LOG_NAME:Z

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_SHORT_LOG_NAME:Z

    .line 194
    const-string v2, "org.slf4j.simpleLogger.showDateTime"

    sget-boolean v3, Lorg/slf4j/impl/SimpleLogger;->SHOW_DATE_TIME:Z

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_DATE_TIME:Z

    .line 195
    const-string v2, "org.slf4j.simpleLogger.showThreadName"

    sget-boolean v3, Lorg/slf4j/impl/SimpleLogger;->SHOW_THREAD_NAME:Z

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->SHOW_THREAD_NAME:Z

    .line 196
    const-string v2, "org.slf4j.simpleLogger.dateTimeFormat"

    sget-object v3, Lorg/slf4j/impl/SimpleLogger;->DATE_TIME_FORMAT_STR:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/slf4j/impl/SimpleLogger;->DATE_TIME_FORMAT_STR:Ljava/lang/String;

    .line 197
    const-string v2, "org.slf4j.simpleLogger.levelInBrackets"

    sget-boolean v3, Lorg/slf4j/impl/SimpleLogger;->LEVEL_IN_BRACKETS:Z

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/slf4j/impl/SimpleLogger;->LEVEL_IN_BRACKETS:Z

    .line 198
    const-string v2, "org.slf4j.simpleLogger.warnLevelString"

    sget-object v3, Lorg/slf4j/impl/SimpleLogger;->WARN_LEVEL_STRING:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/slf4j/impl/SimpleLogger;->WARN_LEVEL_STRING:Ljava/lang/String;

    .line 200
    const-string v2, "org.slf4j.simpleLogger.logFile"

    sget-object v3, Lorg/slf4j/impl/SimpleLogger;->LOG_FILE:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/slf4j/impl/SimpleLogger;->LOG_FILE:Ljava/lang/String;

    .line 201
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->LOG_FILE:Ljava/lang/String;

    invoke-static {v2}, Lorg/slf4j/impl/SimpleLogger;->computeTargetStream(Ljava/lang/String;)Ljava/io/PrintStream;

    move-result-object v2

    sput-object v2, Lorg/slf4j/impl/SimpleLogger;->TARGET_STREAM:Ljava/io/PrintStream;

    .line 203
    sget-object v2, Lorg/slf4j/impl/SimpleLogger;->DATE_TIME_FORMAT_STR:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 205
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lorg/slf4j/impl/SimpleLogger;->DATE_TIME_FORMAT_STR:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/slf4j/impl/SimpleLogger;->DATE_FORMATTER:Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Bad date format in simplelogger.properties; will output relative time"

    invoke-static {v2, v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static loadProperties()V
    .locals 2

    .prologue
    .line 231
    new-instance v1, Lorg/slf4j/impl/SimpleLogger$1;

    invoke-direct {v1}, Lorg/slf4j/impl/SimpleLogger$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 241
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    sget-object v1, Lorg/slf4j/impl/SimpleLogger;->SIMPLE_LOGGER_PROPS:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 244
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0x20

    .line 311
    invoke-virtual {p0, p1}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .local v0, "buf":Ljava/lang/StringBuilder;
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->SHOW_DATE_TIME:Z

    if-eqz v1, :cond_1

    .line 319
    sget-object v1, Lorg/slf4j/impl/SimpleLogger;->DATE_FORMATTER:Ljava/text/DateFormat;

    if-eqz v1, :cond_7

    .line 320
    invoke-direct {p0}, Lorg/slf4j/impl/SimpleLogger;->getFormattedDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_1
    :goto_1
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->SHOW_THREAD_NAME:Z

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_2
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->LEVEL_IN_BRACKETS:Z

    if-eqz v1, :cond_3

    .line 336
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 356
    :goto_2
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->LEVEL_IN_BRACKETS:Z

    if-eqz v1, :cond_4

    .line 357
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->SHOW_SHORT_LOG_NAME:Z

    if-eqz v1, :cond_8

    .line 362
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 363
    invoke-direct {p0}, Lorg/slf4j/impl/SimpleLogger;->computeShortName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    .line 364
    :cond_5
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->shortLogName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_6
    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0, v0, p3}, Lorg/slf4j/impl/SimpleLogger;->write(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 323
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/slf4j/impl/SimpleLogger;->START_TIME:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 341
    :sswitch_0
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 344
    :sswitch_1
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 347
    :sswitch_2
    const-string v1, "INFO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 350
    :sswitch_3
    sget-object v1, Lorg/slf4j/impl/SimpleLogger;->WARN_LEVEL_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 353
    :sswitch_4
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 365
    :cond_8
    sget-boolean v1, Lorg/slf4j/impl/SimpleLogger;->SHOW_LOG_NAME:Z

    if-eqz v1, :cond_6

    .line 366
    iget-object v1, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 339
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method private static stringToLevel(Ljava/lang/String;)I
    .locals 2
    .param p0, "levelStr"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x14

    .line 287
    const-string v1, "trace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const/4 v0, 0x0

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    const-string v1, "debug"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const/16 v0, 0xa

    goto :goto_0

    .line 291
    :cond_2
    const-string v1, "info"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string v1, "warn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    const/16 v0, 0x1e

    goto :goto_0

    .line 295
    :cond_3
    const-string v1, "error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/16 v0, 0x28

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 491
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .prologue
    .line 499
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .prologue
    .line 507
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 520
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 515
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 617
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 625
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 626
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 633
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 646
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 647
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 641
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 533
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 541
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 549
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 562
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 557
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 483
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 609
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 525
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected isLevelEnabled(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 436
    iget v0, p0, Lorg/slf4j/impl/SimpleLogger;->currentLogLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 567
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/slf4j/impl/SimpleLogger;->isLevelEnabled(I)Z

    move-result v0

    return v0
.end method

.method recursivelyComputeLevelString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 275
    iget-object v2, p0, Lorg/slf4j/impl/SimpleLogger;->name:Ljava/lang/String;

    .line 276
    .local v2, "tempName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 277
    .local v1, "levelString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 278
    .local v0, "indexOfLastDot":I
    :goto_0
    if-nez v1, :cond_0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "org.slf4j.simpleLogger.log."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/slf4j/impl/SimpleLogger;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 283
    :cond_0
    return-object v1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;

    .prologue
    .line 457
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/Object;
    .param p3, "param2"    # Ljava/lang/Object;

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 575
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 583
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 591
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 604
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 599
    const/16 v0, 0x1e

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/impl/SimpleLogger;->formatAndLog(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 600
    return-void
.end method

.method write(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->TARGET_STREAM:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 378
    if-eqz p2, :cond_0

    .line 379
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->TARGET_STREAM:Ljava/io/PrintStream;

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 381
    :cond_0
    sget-object v0, Lorg/slf4j/impl/SimpleLogger;->TARGET_STREAM:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 382
    return-void
.end method
