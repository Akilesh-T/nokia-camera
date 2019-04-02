.class public Lorg/slf4j/impl/SimpleLoggerFactory;
.super Ljava/lang/Object;
.source "SimpleLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v3, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Logger;

    .line 52
    .local v2, "simpleLogger":Lorg/slf4j/Logger;
    if-eqz v2, :cond_0

    .line 57
    .end local v2    # "simpleLogger":Lorg/slf4j/Logger;
    :goto_0
    return-object v2

    .line 55
    .restart local v2    # "simpleLogger":Lorg/slf4j/Logger;
    :cond_0
    new-instance v0, Lorg/slf4j/impl/SimpleLogger;

    invoke-direct {v0, p1}, Lorg/slf4j/impl/SimpleLogger;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "newInstance":Lorg/slf4j/Logger;
    iget-object v3, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/Logger;

    .line 57
    .local v1, "oldInstance":Lorg/slf4j/Logger;
    if-nez v1, :cond_1

    .end local v0    # "newInstance":Lorg/slf4j/Logger;
    :goto_1
    move-object v2, v0

    goto :goto_0

    .restart local v0    # "newInstance":Lorg/slf4j/Logger;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method reset()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/slf4j/impl/SimpleLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 72
    return-void
.end method
