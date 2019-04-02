.class public Lcom/android/camera/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ReflectionUtil"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 141
    :goto_0
    return-object v1

    .line 134
    :cond_1
    const/4 v1, 0x0

    .line 136
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v3, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 141
    goto :goto_0
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 118
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 128
    :goto_0
    return-object v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    .line 123
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 124
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v3, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 128
    goto :goto_0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 158
    :goto_0
    return-object v1

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 150
    .local v1, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    sget-object v3, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v3, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 158
    goto :goto_0
.end method

.method public static getStaticAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v3

    .line 165
    :cond_1
    const/4 v2, 0x0

    .line 167
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    .line 169
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 174
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 175
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 178
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public static instance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "classType":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "object":Ljava/lang/Object;
    return-object v1
.end method

.method public static instance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "paramTypes"    # [Ljava/lang/Class;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 191
    .local v0, "classType":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 192
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, "object":Ljava/lang/Object;
    return-object v2
.end method

.method public static instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "clazz"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    .line 198
    .local v0, "paramTypes":[Ljava/lang/Class;
    invoke-static {p0, v0, p1}, Lcom/android/camera/util/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "argsClass"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 24
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-object v3

    .line 28
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v4, p2

    array-length v5, p3

    if-ne v4, v5, :cond_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 34
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 36
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_3

    if-nez p3, :cond_5

    .line 37
    :cond_3
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 49
    :goto_1
    if-eqz v2, :cond_0

    .line 50
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 51
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    goto :goto_0

    .line 39
    :cond_5
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_6
    :try_start_3
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v3

    goto :goto_0

    .line 56
    :catch_2
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "clazzName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "argsClass"    # [Ljava/lang/Class;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v3

    .line 72
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v4, p2

    array-length v5, p3

    if-ne v4, v5, :cond_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 79
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 83
    :goto_1
    if-eqz v0, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 90
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_3

    if-nez p3, :cond_5

    .line 91
    :cond_3
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 101
    :goto_2
    if-eqz v2, :cond_0

    .line 102
    if-eqz p2, :cond_4

    if-nez p3, :cond_6

    .line 103
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v3

    goto :goto_0

    .line 93
    :cond_5
    :try_start_3
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto :goto_2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_6
    :try_start_4
    invoke-virtual {v2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v3

    goto :goto_0

    .line 108
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v4, Lcom/android/camera/util/ReflectionUtils;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    invoke-static {v4, v3, v1}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    goto :goto_1

    .line 108
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3
.end method
