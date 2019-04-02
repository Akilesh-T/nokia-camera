.class public final Lcom/fih_foxconn/imagelab/env/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final DEFAULT_MIN_LOG_LEVEL:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "psmodelsdk"

.field private static final IGNORED_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final messagePrefix:Ljava/lang/String;

.field private minLogLevel:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    .line 35
    sget-object v0, Lcom/fih_foxconn/imagelab/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "dalvik.system.VMStack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/fih_foxconn/imagelab/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "java.lang.Thread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/fih_foxconn/imagelab/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-class v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "psmodelsdk"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "minLogLevel"    # I

    .prologue
    .line 87
    const-string v0, "psmodelsdk"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput p1, p0, Lcom/fih_foxconn/imagelab/env/Logger;->minLogLevel:I

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "messagePrefix"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "psmodelsdk"

    invoke-direct {p0, v0, p1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "messagePrefix"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x3

    iput v1, p0, Lcom/fih_foxconn/imagelab/env/Logger;->minLogLevel:I

    .line 71
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    .line 72
    if-nez p2, :cond_1

    invoke-static {}, Lcom/fih_foxconn/imagelab/env/Logger;->getCallerSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "prefix":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->messagePrefix:Ljava/lang/String;

    .line 74
    return-void

    :cond_1
    move-object v0, p2

    .line 72
    goto :goto_0
.end method

.method private static getCallerSimpleName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 116
    .local v3, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 117
    .local v2, "elem":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "className":Ljava/lang/String;
    sget-object v6, Lcom/fih_foxconn/imagelab/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 120
    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "classParts":[Ljava/lang/String;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    .line 125
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classParts":[Ljava/lang/String;
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v4

    .line 116
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "elem":Ljava/lang/StackTraceElement;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "elem":Ljava/lang/StackTraceElement;
    :cond_1
    const-class v4, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private varargs toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/env/Logger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "format":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 151
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 181
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 187
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 157
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 163
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_0
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "logLevel"    # I

    .prologue
    .line 96
    iget v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->minLogLevel:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinLogLevel(I)V
    .locals 0
    .param p1, "minLogLevel"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fih_foxconn/imagelab/env/Logger;->minLogLevel:I

    .line 93
    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 133
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 169
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/fih_foxconn/imagelab/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/fih_foxconn/imagelab/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_0
    return-void
.end method
