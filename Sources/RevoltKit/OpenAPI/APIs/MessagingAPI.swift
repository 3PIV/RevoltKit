//
// MessagingAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MessagingAPI {

    /**
     Acknowledge Message
     
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelAckMessagePut(channel: ChannelIDModel, message: IdModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        channelsChannelAckMessagePutWithRequestBuilder(channel: channel, message: message).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Acknowledge Message
     - PUT /channels/:channel/ack/:message
     - Lets the server and all other clients know that we've seen this message id in this channel.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - returns: RequestBuilder<Void> 
     */
    open class func channelsChannelAckMessagePutWithRequestBuilder(channel: ChannelIDModel, message: IdModel) -> RequestBuilder<Void> {
        var localVariablePath = "/channels/:channel/ack/:message"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let messagePreEscape = "\(APIHelper.mapValueToPathItem(message))"
        let messagePostEscape = messagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{message}", with: messagePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Messages
     
     - parameter channel: (path) Channel ID 
     - parameter inlineObject14Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesGet(channel: ChannelIDModel, fetchMessageModel: ChannelsMessagingFetchMessagesModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: AnyOfarrayobjectModel?, _ error: Error?) -> Void)) {
        channelsChannelMessagesGetWithRequestBuilder(channel: channel, inlineObject14Model: fetchMessageModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Messages
     - GET /channels/:channel/messages
     - Fetches multiple messages.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter inlineObject14Model: (body)  (optional)
     - returns: RequestBuilder<AnyOfarrayobjectModel> 
     */
    open class func channelsChannelMessagesGetWithRequestBuilder(channel: ChannelIDModel, fetchMessageModel: ChannelsMessagingFetchMessagesModel? = nil) -> RequestBuilder<AnyOfarrayobjectModel> {
        var localVariablePath = "/channels/:channel/messages"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: fetchMessageModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyOfarrayobjectModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Message
     
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesMessageDelete(channel: ChannelIDModel, message: IdModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        channelsChannelMessagesMessageDeleteWithRequestBuilder(channel: channel, message: message).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Message
     - DELETE /channels/:channel/messages/:message
     - Delete a message you've sent or one you have permission to delete.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - returns: RequestBuilder<Void> 
     */
    open class func channelsChannelMessagesMessageDeleteWithRequestBuilder(channel: ChannelIDModel, message: IdModel) -> RequestBuilder<Void> {
        var localVariablePath = "/channels/:channel/messages/:message"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let messagePreEscape = "\(APIHelper.mapValueToPathItem(message))"
        let messagePostEscape = messagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{message}", with: messagePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Message
     
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesMessageGet(channel: ChannelIDModel, message: IdModel, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: MessageModel?, _ error: Error?) -> Void)) {
        channelsChannelMessagesMessageGetWithRequestBuilder(channel: channel, message: message).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Message
     - GET /channels/:channel/messages/:message
     - Retrieves a message by ID.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - returns: RequestBuilder<MessageModel> 
     */
    open class func channelsChannelMessagesMessageGetWithRequestBuilder(channel: ChannelIDModel, message: IdModel) -> RequestBuilder<MessageModel> {
        var localVariablePath = "/channels/:channel/messages/:message"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let messagePreEscape = "\(APIHelper.mapValueToPathItem(message))"
        let messagePostEscape = messagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{message}", with: messagePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Edit Message
     
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - parameter inlineObject16Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesMessagePatch(channel: ChannelIDModel, message: IdModel, editMessageModel: ChannelsMessagingEditMessageModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        channelsChannelMessagesMessagePatchWithRequestBuilder(channel: channel, message: message, inlineObject16Model: editMessageModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit Message
     - PATCH /channels/:channel/messages/:message
     - Edits a message that you've previously sent.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter message: (path) Message ID 
     - parameter inlineObject16Model: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func channelsChannelMessagesMessagePatchWithRequestBuilder(channel: ChannelIDModel, message: IdModel, editMessageModel: ChannelsMessagingEditMessageModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/channels/:channel/messages/:message"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let messagePreEscape = "\(APIHelper.mapValueToPathItem(message))"
        let messagePostEscape = messagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{message}", with: messagePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: editMessageModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Send Message
     
     - parameter channel: (path) Channel ID 
     - parameter inlineObject15Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesPost(channel: ChannelIDModel, sendMessageModel: ChannelsMessagingSendMessageModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: MessageModel?, _ error: Error?) -> Void)) {
        channelsChannelMessagesPostWithRequestBuilder(channel: channel, inlineObject15Model: sendMessageModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send Message
     - POST /channels/:channel/messages
     - Sends a message to the given channel.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter inlineObject15Model: (body)  (optional)
     - returns: RequestBuilder<MessageModel> 
     */
    open class func channelsChannelMessagesPostWithRequestBuilder(channel: ChannelIDModel, sendMessageModel: ChannelsMessagingSendMessageModel? = nil) -> RequestBuilder<MessageModel> {
        var localVariablePath = "/channels/:channel/messages"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sendMessageModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MessageModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Search for Messages
     
     - parameter channel: (path) Channel ID 
     - parameter inlineObject18Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesSearchPost(channel: ChannelIDModel, searchForMessageModel: ChannelsMessagingSearchForMessagesModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: AnyOfarrayobjectModel?, _ error: Error?) -> Void)) {
        channelsChannelMessagesSearchPostWithRequestBuilder(channel: channel, inlineObject18Model: searchForMessageModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search for Messages
     - POST /channels/:channel/messages/search
     - This route searches for messages within the given parameters.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter inlineObject18Model: (body)  (optional)
     - returns: RequestBuilder<AnyOfarrayobjectModel> 
     */
    open class func channelsChannelMessagesSearchPostWithRequestBuilder(channel: ChannelIDModel, searchForMessagesModel: ChannelsMessagingSearchForMessagesModel? = nil) -> RequestBuilder<AnyOfarrayobjectModel> {
        var localVariablePath = "/channels/:channel/messages/search"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: searchForMessagesModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyOfarrayobjectModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Poll Message Changes
     
     - parameter channel: (path) Channel ID 
     - parameter inlineObject17Model: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func channelsChannelMessagesStalePost(channel: ChannelIDModel, pollMessageChangesModel: ChannelsMessagingPollMessageChangesModel? = nil, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: ChannelsMessagingPollMessageChangesResponseModel?, _ error: Error?) -> Void)) {
        channelsChannelMessagesStalePostWithRequestBuilder(channel: channel, pollMessageChangeModel: pollMessageChangesModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Poll Message Changes
     - POST /channels/:channel/messages/stale
     - This route returns any changed message objects and tells you if any have been deleted.  Don't actually poll this route, instead use this to update your local database.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter channel: (path) Channel ID 
     - parameter inlineObject17Model: (body)  (optional)
     - returns: RequestBuilder<InlineResponse2002Model> 
     */
    open class func channelsChannelMessagesStalePostWithRequestBuilder(channel: ChannelIDModel, pollMessageChangeModel: ChannelsMessagingPollMessageChangesModel? = nil) -> RequestBuilder<ChannelsMessagingPollMessageChangesResponseModel> {
        var localVariablePath = "/channels/:channel/messages/stale"
        let channelPreEscape = "\(APIHelper.mapValueToPathItem(channel))"
        let channelPostEscape = channelPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{channel}", with: channelPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pollMessageChangeModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ChannelsMessagingPollMessageChangesResponseModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
