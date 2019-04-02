.class public Lflexjson/factories/DateObjectFactory;
.super Ljava/lang/Object;
.source "DateObjectFactory.java"

# interfaces
.implements Lflexjson/ObjectFactory;


# instance fields
.field dateFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    .line 22
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    invoke-static {v3, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    invoke-static {v4, v4}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM d hh:mm:ss a z yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM d HH:mm:ss z yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yy hh:mm:ss a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/text/DateFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "dateFormats":Ljava/util/List;, "Ljava/util/List<Ljava/text/DateFormat;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    .line 34
    return-void
.end method

.method private instantiateDate(Ljava/lang/Class;Ljava/lang/Long;Lflexjson/ObjectBinder;)Ljava/util/Date;
    .locals 6
    .param p1, "targetType"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Long;
    .param p3, "context"    # Lflexjson/ObjectBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 64
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 67
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    move-object v3, v1

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public instantiate(Lflexjson/ObjectBinder;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .param p1, "context"    # Lflexjson/ObjectBinder;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "targetType"    # Ljava/lang/reflect/Type;
    .param p4, "targetClass"    # Ljava/lang/Class;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 38
    :try_start_0
    instance-of v5, p2, Ljava/lang/Double;

    if-eqz v5, :cond_0

    .line 39
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Class;

    move-object v5, v0

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v5, v6, p1}, Lflexjson/factories/DateObjectFactory;->instantiateDate(Ljava/lang/Class;Ljava/lang/Long;Lflexjson/ObjectBinder;)Ljava/util/Date;

    move-result-object v5

    .line 45
    :goto_0
    return-object v5

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 41
    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Class;

    move-object v5, v0

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-direct {p0, v5, p2, p1}, Lflexjson/factories/DateObjectFactory;->instantiateDate(Ljava/lang/Class;Ljava/lang/Long;Lflexjson/ObjectBinder;)Ljava/util/Date;

    move-result-object v5

    goto :goto_0

    .line 43
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lflexjson/factories/DateObjectFactory;->dateFormats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    .local v3, "format":Ljava/text/DateFormat;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_0

    .line 50
    .end local v3    # "format":Ljava/text/DateFormat;
    :cond_2
    :try_start_2
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s:  Parsing date %s was not recognized as a date format"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lflexjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local p2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s:  Error encountered trying to instantiate %s"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v10

    check-cast p3, Ljava/lang/Class;

    .end local p3    # "targetType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 54
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local p3    # "targetType":Ljava/lang/reflect/Type;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s:  Error encountered trying to instantiate %s.  Make sure there is a public constructor that accepts a single Long."

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v10

    check-cast p3, Ljava/lang/Class;

    .end local p3    # "targetType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 56
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local p3    # "targetType":Ljava/lang/reflect/Type;
    :catch_2
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lflexjson/JSONException;

    const-string v6, "%s:  Error encountered trying to instantiate %s.  Make sure there is a public constructor that accepts a single Long."

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lflexjson/ObjectBinder;->getCurrentPath()Lflexjson/Path;

    move-result-object v8

    aput-object v8, v7, v10

    check-cast p3, Ljava/lang/Class;

    .end local p3    # "targetType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lflexjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 46
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "format":Ljava/text/DateFormat;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local p2    # "value":Ljava/lang/Object;
    .restart local p3    # "targetType":Ljava/lang/reflect/Type;
    :catch_3
    move-exception v5

    goto/16 :goto_1
.end method
