.class final Lorg/slf4j/impl/SimpleLogger$1;
.super Ljava/lang/Object;
.source "SimpleLogger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/slf4j/impl/SimpleLogger;->loadProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 234
    .local v0, "threadCL":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 235
    const-string v1, "simplelogger.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "simplelogger.properties"

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/slf4j/impl/SimpleLogger$1;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
