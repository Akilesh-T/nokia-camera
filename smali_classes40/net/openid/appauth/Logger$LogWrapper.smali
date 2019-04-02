.class interface abstract Lnet/openid/appauth/Logger$LogWrapper;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LogWrapper"
.end annotation


# virtual methods
.method public abstract getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
.end method

.method public abstract isLoggable(Ljava/lang/String;I)Z
.end method

.method public abstract println(ILjava/lang/String;Ljava/lang/String;)V
.end method
