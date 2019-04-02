.class final Lnet/openid/appauth/Logger$AndroidLogWrapper;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lnet/openid/appauth/Logger$LogWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndroidLogWrapper"
.end annotation


# static fields
.field private static final INSTANCE:Lnet/openid/appauth/Logger$AndroidLogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lnet/openid/appauth/Logger$AndroidLogWrapper;

    invoke-direct {v0}, Lnet/openid/appauth/Logger$AndroidLogWrapper;-><init>()V

    sput-object v0, Lnet/openid/appauth/Logger$AndroidLogWrapper;->INSTANCE:Lnet/openid/appauth/Logger$AndroidLogWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lnet/openid/appauth/Logger$AndroidLogWrapper;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lnet/openid/appauth/Logger$AndroidLogWrapper;->INSTANCE:Lnet/openid/appauth/Logger$AndroidLogWrapper;

    return-object v0
.end method


# virtual methods
.method public getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggable(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
