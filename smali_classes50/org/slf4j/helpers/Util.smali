.class public final Lorg/slf4j/helpers/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/slf4j/helpers/Util$1;,
        Lorg/slf4j/helpers/Util$ClassContextSecurityManager;
    }
.end annotation


# static fields
.field private static final SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;-><init>(Lorg/slf4j/helpers/Util$1;)V

    sput-object v0, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getCallingClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v3, Lorg/slf4j/helpers/Util;->SECURITY_MANAGER:Lorg/slf4j/helpers/Util$ClassContextSecurityManager;

    invoke-virtual {v3}, Lorg/slf4j/helpers/Util$ClassContextSecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "trace":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-class v3, Lorg/slf4j/helpers/Util;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "thisClassName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 63
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    :cond_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    add-int/lit8 v3, v0, 0x2

    array-length v4, v2

    if-lt v3, v4, :cond_3

    .line 69
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    add-int/lit8 v3, v0, 0x2

    aget-object v3, v2, v3

    return-object v3
.end method

.method public static final report(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLF4J: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static final report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Reported exception:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    return-void
.end method
